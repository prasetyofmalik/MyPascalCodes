program latwaildu1;

uses crt;
var
  n,angka,jumlah: integer;

begin
  clrscr;
  writeln('Program deret angka');
  write('Masukkan angka : ');
  readln(n);
  jumlah:=0;
    for angka:=1 to (n-1) do
        begin
          write(angka);
          write(' + ');
          jumlah:=jumlah+angka;
        end;
    for angka:= n to n do
        begin
          write(angka);
          write(' = ');
          jumlah:=jumlah+angka;
          write(jumlah);
        end;
  readln;
end.
