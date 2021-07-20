program banyakmuncul;
uses crt;
const
  sampai =10;
var
  n,i,u,jumlah: integer;
  isi: array [1..sampai] of integer;

begin
  clrscr;
  repeat
    write('Masukkan Jumlah Mahasiswa : '); readln(n);
  until n<=sampai;
  for i:=1 to n do
    begin
      write('Masukkan usia mahasiswa ke-',i,': '); readln(isi[i]);
    end;
    writeln;
    jumlah:=0;

    write('pilih umur : ');readln(u);
      for i:=1 to n do
      begin
        if (isi[i]=u) then
          begin
            jumlah:=jumlah+1;
          end;
      end;
      writeln('Jumlah mahasiswa berusia ',u,' tahun = ',jumlah);
    readln;
end.
