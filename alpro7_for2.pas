program kotakbilangan;
uses crt;
var
  i,j:integer;

begin
  clrscr;
  for i:=1 to 5 do
  begin
    for j:=1 to 8 do
      write(j:3);
      writeln;
  end;
  readln;
end.
