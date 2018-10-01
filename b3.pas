var f1,f2:text;
    n,k,b,i:integer;
    A:array[1..100] of integer;

Begin
assign(f1,'BAI3.INP');
assign(f2,'BAI3.OUT');
reset(f1);
rewrite(f2);
read(f1,n,k);
A[1]:=1;
A[2]:=1;
For i:=3 to n do
   A[i]:=(A[i-1]+A[i-2]) mod 128;
write(f2,A[k]);
close(f1);
close(f2);
End.
