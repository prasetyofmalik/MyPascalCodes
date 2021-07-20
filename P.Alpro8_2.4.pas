program modifikasi7_4;
uses crt;
var
n,c,d,x,y:integer;
function a:integer;
begin
  c:=1;
  for d:=0 to n-y do
    write(' ':3);
end;
function b:integer;
begin
  for x:=0 to y do
  begin
    write(c:3,' ':3);
    c:= c*(y-x) div (x+1);
  end;
end;
procedure pascal;
begin
  for y:=0 to n do
  begin a;b;writeln;
  end;readln;
end;
begin
  clrscr;
  write('Masukkan tinggi segitiga: ');readln(n);
  writeln;
  pascal;
end.