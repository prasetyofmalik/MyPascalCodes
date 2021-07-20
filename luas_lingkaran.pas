program luaslingkaran;

uses crt;

var
  jari, luas : real;

begin
  clrscr;
  writeln('Mencari Luas Lingkaran');
  writeln('======================');
  write('Input panjang jari-jari (cm) = '); readln(jari);
  luas := 22 / 7 * jari * jari;
  writeln('Luas adalah (cm2) = ', luas:1:2);
  readln;
end.