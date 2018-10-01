var f1,f2:text;
    i,j,n,m,tam:integer;
    s:string;
    A,B:array[1..100] of integer;

Begin
assign(f1,'BAI1.INP');
assign(f2,'BAI1.OUT');
reset(f1);
rewrite(f2);
read(f1,s);
for i:=1 to length(s) do
  val(s[i],A[i]);

for i:=1 to length(s) do
  for j:=i+1 to length(s) do
  If A[j]<A[i] then
  Begin
    tam:=A[j];
    A[j]:=A[i];
    A[i]:=tam;
  end;
If A[1]=0 then
for i:=2 to length(s) do
  if A[i]<>0 then
  Begin
  tam:=A[1];
  A[1]:=A[i];
  A[i]:=tam;
  break;
  end;
for i:=1 to length(s) do
  write(f2,A[i]);

close(f1);
close(f2);
End.
