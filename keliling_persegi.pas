program keliling_persegi;
uses crt;
var
 s,keliling : real;

begin
 clrscr;
  write('masukkan nilai sisi : '); readln(s);
  keliling := 4 * s;
  writeln('keliling persegi panjang = ',keliling);
 readln;
end.
