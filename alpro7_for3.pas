program kotakbilangan;
uses crt;
var
  i,j,baris,kolom:integer;
  c:char;

begin
  clrscr;
  write('Karakter: ');readln(c);
  write('Jumlah baris: ');readln(baris);
  write('Jumlah kolom: ');readln(kolom);
  for i:=1 to baris do
  begin
    for j:=1 to kolom do
      write(c:3);
      writeln;
  end;
  readln;
end.
