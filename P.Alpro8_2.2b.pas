program modifikasi7_2b;
uses crt;
var
  i,j:integer;
procedure n(m:integer);
begin
  if m > i then
    write(' ':2)
  else write('#':2);
end;
function a:integer;
begin
  for j:=9 downto 1 do n(j);
  writeln;
end;
begin
  clrscr;
  for i:=1 to 5 do a;
  readln;
end.

