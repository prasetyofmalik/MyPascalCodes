program luas_persegipanjang;
uses crt;
var
    p,l,luas : integer;

begin
    clrscr;
    write('masukkan nilai panjang = '); readln(p);
    write('masukkan nilai lebar = '); readln(l);
    luas := p * l;
    writeln('luas persegi panjang = ', luas);
  readln;
end.

