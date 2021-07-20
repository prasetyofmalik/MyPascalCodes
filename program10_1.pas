program program10_1;
uses crt;
type data=array[1..100] of integer;
label 1;
var
   pilih,n,i:integer;
   x:data;

procedure input;
begin
    write('input jumlah data: ');readln(n);
    for i:=1 to n do
    begin
      write('input data ke-',i,'= ');
      readln(x[i]);
    end;
end;

procedure tampil;
begin
  write('Tampilkan data: ');
  for i:=1 to n-1 do
  write(x[i],', ');
  write(x[n]);
  readln;
end;

procedure minimal;
var min:integer;
begin
  min:=x[1];
  for i:=2 to n do
  begin
    if x[i] < min then min:=x[i];
  end;
  writeln('Data terkecil: ',min);
  readln;
end;

procedure maksimal;
var maks:integer;
begin
  maks:=x[1];
  for i:=2 to n do
  begin
    if x[i] > maks then maks:=x[i];
  end;
  writeln('Data terbesar: ',maks);
  readln;
end;

procedure ratarata;
var total,rtrt:double;
begin
  total:=x[1];
  for i:=2 to n do
  begin
    total:=total+x[i];
  end;
  rtrt:=total/n;
  writeln('Rata-rata: ',rtrt:0:2);
  readln;
end;

begin
  clrscr;
  writeln('Selamat datang di aplikasi statistik sederhana');
  writeln('Silakan pilih menu berikut: ');
  writeln('1. Input data');
  writeln('2. Tampilkan semua data');
  writeln('3. Tampilkan data terkecil');
  writeln('4. Tampilkan data terbesar');
  writeln('5. Tampilkan rata-rata');
  writeln('6. Keluar');
  writeln('Jika Anda belum menginput data, harap pilih menu nomor 1');
  1:
  write('Pilihan Anda: ');readln(pilih);
  writeln;
  case pilih of
  1:input;
  2:tampil;
  3:minimal;
  4:maksimal;
  5:ratarata;
  6:exit;
  end;
  writeln;
  goto 1;
end.
