program kombinasi;
uses crt;
var
n,r,y,x: integer;
c:longint;
begin
  clrscr;
  writeln('Kombinasi nCr');
  write('Masukkan n: ');readln(n);
  write('Masukkan r: ');readln(r);
  for y:=0 to n do
  begin
  c:=1;
  for x:=0 to r-1 do
  c:=c*(y-x) div (x+1);
  end;
  write(c);
  readln;
end.
