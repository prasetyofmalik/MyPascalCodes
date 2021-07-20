program aski;
uses crt;
var
kr1,kr2: char;
go,int1,int2: integer;
begin
  clrscr;
  writeln('Program urutan karakter ASCII-angka');
  writeln('Pilih 1 untuk mengubah karakter ASCII ke angka');
  writeln('Pilih 2 untuk mengubah angka ke karakter ASCII');
  write('pilih angka 1 atau 2: ');readln(go);
  if go=1 then
  begin
    write('Masukkan karakter ASCII: ');readln(kr1);
    int1:=ord(kr1);
    write('Urutan angka: ',int1);
  end
  else if go=2 then
  begin
    write('Masukkan urutan angka: ');readln(int2);
    kr2:=char(int2);
    write('Karakter ASCII: ',kr2);
  end;
  readln;
end.