program breakk;
uses crt;
var i:integer;
begin
  clrscr;
  for i:=1 to 10 do
  begin
    writeln('Coba break ',i);
    if i=4 then break;
  end;
  readln;
end.