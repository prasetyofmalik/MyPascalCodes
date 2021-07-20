program psacla1;
uses crt;
var
n,c,d,x,y:integer;
begin
  clrscr;
  write('Masukkan tinggi segitiga: ');readln(n);
  writeln;
  for y:=0 to n do
  begin
    c:=1;
    for d:=0 to n-y do
    begin
      write(' ':3);
    end;
    for x:=0 to y do
    begin
      write(c:3);
      write(' ':3);
      c:= c*(y-x) div (x+1);
    end;
    writeln;
  end;
  readln;
end.