program contoh73;
uses crt;
var
  i,j:integer;
begin
  clrscr;
  for i:=1 to 5 do
  begin
    for j:=9 downto 1 do
      if j > i then
      write(' ':2)
      else write('#':2);
    writeln;
  end;
  readln;
end.

