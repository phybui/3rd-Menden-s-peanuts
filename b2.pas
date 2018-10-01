var f1,f2:text;
    i,j,n,m,t,a:integer;

Begin
assign(f1,'BAI2.INP');
assign(f2,'BAI2.OUT');
reset(f1);
rewrite(f2);
read(f1,m,n);
n:=n*1024;
t:=0;
a:=1;
while m<n do
  begin
    t:=t+a;
    m:=m*2;
    inc(a);
  end;
write(f2,t,' ',m);
close(f1);
close(f2);
end.
