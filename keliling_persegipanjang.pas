program keliling_persegipanjang;
uses crt;
var
 p,l,keliling : integer;

begin
 clrscr;
  write('masukkan nilai panjang : '); readln(p);
  write('masukkan nilai lebar : '); readln(l);
  keliling := 2 * (p + l);
  writeln('keliling persegi panjang = ',keliling);
 readln;
end.
