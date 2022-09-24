



module FullAdder16(output Cout,output[15:0] S ,input[15:0]  A,B,input Cin);
  
  wire[14:0]C;
 
  FullAdder F1(C[0],S[0],A[0],B[0],Cin);
  FullAdder F2(C[1],S[1],A[1],B[1],C[0]);
  FullAdder F3(C[2],S[2],A[2],B[2],C[1]);
  FullAdder F4(C[3],S[3],A[3],B[3],C[2]);
  FullAdder F5(C[4],S[4],A[4],B[4],C[3]);
  FullAdder F6(C[5],S[5],A[5],B[5],C[4]);
  FullAdder F7(C[6],S[6],A[6],B[6],C[5]);
  FullAdder F8(C[7],S[7],A[7],B[7],C[6]);
  FullAdder F9(C[8],S[8],A[8],B[8],C[7]);
  FullAdder F10(C[9],S[9],A[9],B[9],C[8]);
  FullAdder F11(C[10],S[10],A[10],B[10],C[9]);
  FullAdder F12(C[11],S[11],A[11],B[11],C[10]);
  FullAdder F13(C[12],S[12],A[12],B[12],C[11]);
  FullAdder F14(C[13],S[13],A[13],B[13],C[12]);
  FullAdder F15(C[14],S[14],A[14],B[14],C[13]);
  FullAdder F16(Cout,S[15],A[15],B[15],C[14]);
  
  
  

endmodule 

