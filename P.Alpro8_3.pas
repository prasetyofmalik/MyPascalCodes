program kabataku;
uses crt;
label 1;
var
  m,n,pilih:integer;
procedure jumlah(a,b:integer);
begin
  writeln(' = ',a+b);
end;
procedure kurang(a,b:integer);
begin
  writeln(' = ',a-b);
end;
procedure kali(a,b:integer);
begin
  writeln(' = ',a*b);
end;
function bagi(a,b:integer):real;
begin
  writeln(' = ',a/b:0:2);
end;
begin
  1:
  clrscr;
  writeln('Selamat datang di Kalkulator Sederhana');
  writeln('Silakan pilih menu berikut: ');
  writeln('  1. Penjumlahan');
  writeln('  2. Pengurangan');
  writeln('  3. Perkalian');
  writeln('  4. Pembagian');
  writeln('  5. Keluar');
  Write('Pilihan Anda: ');readln(pilih);
  if pilih=5 then exit;
  writeln;
  write('Pilih angka:');read(m); gotoxy(16,10);
  case pilih of
  1:begin;write(' + ');readln(n);gotoxy(22,10);jumlah(m,n);end;
  2:begin;write(' - ');readln(n);gotoxy(22,10);kurang(m,n);end;
  3:begin;write(' x ');readln(n);gotoxy(22,10);kali(m,n);end;
  4:begin;write(' : ');readln(n);gotoxy(22,10);bagi(m,n);end;
  end;
  readln;
  writeln;
  goto 1;
end.