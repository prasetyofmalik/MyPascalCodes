Program Contoh74;
uses crt;
var
 i,j,m:integer;
 kar:char;
begin
  clrscr;
  Write('Karakter yang digunakan: ');
  readln(kar);
  writeln('Ukuran segitiga yang diinginkan');
  write('Alas= ');readln(m);
  for i:=1 to m do
  begin
    for j:=1 to i do
      if (i=1)or(i=m)or(j=1)or(j=i) then
        write(kar:2)
      else write(' ':2);
      writeln;
  end;
  readln;
end.