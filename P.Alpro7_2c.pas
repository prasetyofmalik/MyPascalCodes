program contoh73;
uses crt;
var
  i,j,a,b:integer;
begin
  clrscr;
  a:=4;b:=5;
  for i:=1 to 5 do
  begin
    for j:=1 to 9 do
      if (j>a)and(j<=b)then
        write('#':2)
      else
        write(' ':2);
    writeln;
    a:=a-1;b:=b+1;
  end;
  readln;
end.


