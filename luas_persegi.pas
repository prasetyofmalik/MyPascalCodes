program luas_persegi;
uses crt;
var
 s, luas : integer;

begin
 clrscr;
  write('masukkan sisi persegi = '); readln(s);
  luas := s * s;
  writeln('luas persegi = ', luas);
 readln;
end.