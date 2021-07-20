program latwaildu2;
uses crt;
var
  n,jumlah: integer;

begin
  clrscr;
  write('Masukkan jumlah anak ayam : ');readln(n);
  jumlah:=n;
  while jumlah>=2 do
    begin
      write('Anak ayam turun ',jumlah);
      writeln(', mati satu tinggal ',(jumlah-1));
      jumlah:=jumlah-1;
    end;
    write('Anak ayam turun 1, mati satu tinggal induknya.');
  readln;
end.
