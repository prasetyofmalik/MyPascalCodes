Program modifikasi7_3a;
uses crt;
var
 i,j,m:integer;
 kar:char;
function isi:integer;
begin
  for j:=1 to i do
    if (i=1)or(i=m)or(j=1)or(j=i) then
      write(kar:2)
    else write(' ':2);
  writeln;
end;
procedure segitiga;
begin
  for i:=1 to m do isi;
  readln;
end;
begin
  clrscr;
  Write('Karakter yang digunakan: ');
  readln(kar);
  writeln('Ukuran segitiga yang diinginkan');
  write('Alas= ');readln(m);
  segitiga;
end.
