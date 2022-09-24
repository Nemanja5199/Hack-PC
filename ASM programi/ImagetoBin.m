clear all
clc
 %read the image from file
 %myImage = im2bw(imread('FTN.png'),0.999);
 myImage = im2bw(imread('Test.png'),0.001);
 imshow(myImage)
 %open a file to write to
 [row col]=size(myImage);
 fid = fopen('ImgToBin1.bin','w+');
 if fid>0
 %write the data to file
     for i=1:row
         for j=1:col/8
             fwrite(fid,binaryVectorToDecimal(myImage(i,(j-1)*8+1:(j-1)*8+8),'LSBFirst'));
         end
     end
         
     
     % close the file
     fclose(fid);
 end