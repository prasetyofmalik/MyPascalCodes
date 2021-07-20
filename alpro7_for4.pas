program kotakbilangan;
uses crt;
var
  i,j,baris:integer;
  c:char;

begin
  clrscr;
  write('Karakter: ');readln(c);
  write('Jumlah baris: ');readln(baris);
  for i:=1 to baris do
  begin
    for j:=1 to i do
      write(c:3);
      writeln;
  end;
  readln;
end.
