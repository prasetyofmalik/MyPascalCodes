program hargabayar;

uses crt;

var
  jumlah, harga, pajak : integer;
  bayar : longint;

begin
  clrscr;
  writeln('Menentukan Harga Bayar');
  writeln('======================');
  write('Jumlah barang = '); readln(jumlah);
  write('Harga satuan Rp. = '); readln(harga);
  write('Pajak Rp. = '); readln(pajak);
  bayar := jumlah*harga+pajak;
  writeln('Harga bayar Rp. = ', bayar);
  readln;
end.

