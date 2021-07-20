program latwaildu1;

uses crt;
var
  n,angka,jumlah: integer;

begin
  clrscr;
  writeln('Program deret angka');
  write('Masukkan angka : ');
  readln(n);
  angka:=1;
  jumlah:=1;
    while angka<n do
        begin
          write(angka);
          write(' + ');
          angka:=angka+1;
          jumlah:=jumlah+angka;
        end;
    if angka = n then
        begin
          write(angka);
          write(' = ');
          write(jumlah);
        end;
  readln;
end.
