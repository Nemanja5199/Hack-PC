%Uciteti preko Import Data kao cell tipa text

fileID = fopen('Rect.bin','w');
for i=1:length(Code)
    X = uint16(bin2dec(Code(i)));
    Y = typecast(X, 'uint8');
    fwrite(fileID,Y);
end
fclose(fileID);