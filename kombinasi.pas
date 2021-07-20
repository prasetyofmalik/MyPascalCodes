program kombinasi;
uses crt;
var
  n,r: integer;
  nfk,rfk: longint;
  i,j: integer;
  combi: longint;
begin
  clrscr;
  writeln('kombinasi nCr');
  write('masukkan n: ');readln(n);
  write('masukkan r: ');readln(r);
    nfk:=n;i:=n;
  while i > (n-r+1) do
    begin i:=i-1;nfk:=nfk*i; end;
    rfk:=1;j:=1;
  while j <= r do
    begin rfk:=rfk*j;j:=j+1; end;
  combi:= nfk div rfk;
  write('kombinasi: ',combi);
  readln;
end.

