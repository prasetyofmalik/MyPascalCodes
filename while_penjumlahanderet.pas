program penjumlahan_deret;
uses crt;
var
  f, n, jumlah: integer;
begin
  clrscr;
  write('Masukkan banyaknya bilangan : '); readln(n);
  f:=1;
  jumlah:=0;
  while f<n do
  begin
    jumlah:=jumlah+f;
    write(f,' + ');
    f:=f+1;
  end;
  jumlah:=jumlah+f;
  write(f,' = ',jumlah);
  readln;
end.