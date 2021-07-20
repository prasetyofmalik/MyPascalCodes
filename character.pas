program karakter;
uses crt;
var
  i : integer;

begin
  clrscr;
  for i := 1 to 150 do
  begin
    write(i:5, ': ', chr(i));
    if (i mod 10) = 0 then writeln;
    readln;
  end;
end.