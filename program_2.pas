Program program13_2;
uses crt;
type
    tabel=record
        NIM:string[9];
        Nama:string[20];
        Tugas,UTS,UAS,Praktikum:byte;
        NA:real;
        Grade:char;
    end;
    kelas=array [1..35] of tabel;
label 1;
var
     Alpro1KS2:kelas;
     n,pilih:integer;
     cari_nama:string;

// Mulai Input Data //
function NAkhir(a,b,c,d:integer):real;
begin
     Nakhir:=(a+3*(b+c+d))/10;
end;

function grading(a:real):char;
var hasil:char;
begin
     case trunc(a) of
          0..19  : hasil:='E';
         20..39  : hasil:='D';
         40..59  : hasil:='C';
         60..79  : hasil:='B';
         80..100 : hasil:='A';
     end;
     grading:=hasil;
end;

procedure InputData(var list:kelas;n:integer);
var i:integer;
begin

     for i:=1 to n do
     begin
         writeln('Mahasiswa ke-',i,': ');
         with list[i] do
         begin
             write('NIM      : ');readln(NIM);
             write('Nama     : ');readln(Nama);
             write('Tugas    : ');readln(Tugas);
             write('UTS      : ');readln(UTS);
             write('UAS      : ');readln(UAS);
             write('Praktikum: ');readln(Praktikum);
             NA:=NAkhir(Tugas,UTS,UAS,Praktikum);
             Grade:=grading(NA);
         end;
     end;
end;
// Akhir Input Data //

// Mulai Tampilan //
procedure tampilan(list:kelas;n:integer);
var i:integer;
begin
     writeln('  DAFTAR NILAI MATA KULIAH ALGORITMA DAN PEMROGRAMAN 1KS2 T.A. 2020/2021 ');
     writeln;
     writeln(' ________________________________________________________________________');
     writeln('|No ':5,'NIM    ':10,'Nama        ':20,'Tugas ':6,'UTS ':5,'UAS ':5,
            'Praktikum':9,' NA ':5,'Grade  |':6);
     writeln(' |----------------------------------------------------------------------|');
     for i:=1 to n do
     begin
         write(' |',i:2);
         with list[i] do
             write(NIM:10,Nama:20,Tugas:5,UTS:6,UAS:5,Praktikum:6,NA:9:1,Grade:4,'   |');
         writeln;
     end;
     writeln(' |______________________________________________________________________| ');
end;
// Akhir Tampilan //

// Mulai Fungsi Maksimum //
function UTSmax(list:kelas;n:integer):integer;
var
     i,max:integer;
begin
     max:=1;
     for i := 2 to n do
     begin
         if (list[i].UTS > list[max].UTS) then max := i;
     end;
     UTSmax:=list[max].UTS;
end;

function UASmax(list:kelas;n:integer):integer;
var
     i,max:integer;
begin
     max:=1;
     for i:=2 to n do
     begin
         if (list[i].UAS > list[max].UAS) then max := i;
     end;
     uasmax:=list[max].UAS;
end;

function Tugasmax(list:kelas;n:integer):integer;
var
     i,max:integer;
begin
     max:=1;
     for i:=2 to n do
     begin
         if (list[i].Tugas > list[max].Tugas) then max := i;
     end;
     Tugasmax:=list[max].Tugas;
end;

function Prakmax(list:kelas;n:integer):integer;
var
     i,max:integer;
begin
     max:=1;
     for i:=2 to n do
     begin
         if (list[i].Praktikum > list[max].Praktikum) then max := i;
     end;
     Prakmax:=list[max].praktikum;
end;

function NAmax(list:kelas;n:integer):real;
var
     i,max:integer;
begin
     max:=1;
     for i:=2 to n do
     begin
         if (list[i].NA > list[max].NA) then max := i;
     end;
     NAmax:=list[max].NA;
end;

procedure maksimum(list:kelas;n:integer);
var
     chose:char;
begin
     writeln('Nilai Maksimum berdasarkan: ');
     writeln('a. Nilai UTS      ');
     writeln('b. Nilai UAS      ');
     writeln('c. Nilai Tugas    ');
     writeln('d. Nilai Praktikum');
     writeln('e. Nilai Akhir    ');
     write  ('Masukkan Pilihan [a/b/c/d/e] ? : ');readln(chose);
     case chose of
         'a': writeln('Nilai terbesar UTS adalah ',UTSmax(Alpro1KS2,n));
         'b': writeln('Nilai terbesar UAS adalah ',UASmax(Alpro1KS2,n));
         'c': writeln('Nilai terbesar Tugas  adalah ',Tugasmax(Alpro1KS2,n));
         'd': writeln('Nilai terbesar Praktikum adalah ',Prakmax(Alpro1KS2,n));
         'e': writeln('Nilai terbesar NA adalah ',NAmax(Alpro1KS2,n):0:2);
     end;
end;
// Akhir Fungsi Maksimum //

// Awal Fungsi Minimum //
function UTSmin(list:kelas;n:integer):integer;
var
     i,min:integer;
begin
     min:=1;
     for i := 2 to n do
     begin
         if (list[i].UTS < list[min].UTS) then min := i;
     end;
     UTSmin:=list[min].UTS;
end;


function UASmin(list:kelas;n:integer):integer;
var
     i,min:integer;
begin
     min:=1;
     for i := 2 to n do
     begin
         if (list[i].UAS < list[min].UAS) then min := i;
     end;
     UASmin:=list[min].UAS;
end;

function Tugasmin(list:kelas;n:integer):integer;
var
     i,min:integer;
begin
     min:=1;
     for i := 2 to n do
     begin
         if (list[i].Tugas < list[min].Tugas) then min := i;
     end;
     Tugasmin:=list[min].Tugas;
end;

function Prakmin(list:kelas;n:integer):integer;
var
     i,min:integer;
begin
     min:=1;
     for i := 2 to n do
     begin
         if (list[i].Praktikum < list[min].Praktikum) then min := i;
     end;
     Prakmin:=list[min].Praktikum;
end;

function NAmin(list:kelas;n:integer):real;
var
     i,min:integer;
begin
     min:=1;
     for i := 2 to n do
     begin
         if (list[i].NA < list[min].NA) then min := i;
     end;
     NAmin:=list[min].NA;
end;

procedure minimum(list:kelas;n:integer);
var
     chose:char;
begin
     writeln('Nilai Minimum berdasarkan: ');
     writeln('a. Nilai UTS      ');
     writeln('b. Nilai UAS      ');
     writeln('c. Nilai Tugas    ');
     writeln('d. Nilai Praktikum');
     writeln('e. Nilai Akhir    ');
     write  ('Masukkan Pilihan [a/b/c/d/e] ? : ');readln(chose);
     case chose of
         'a': writeln('Nilai terkecil UTS adalah ',UTSmin(Alpro1KS2,n));
         'b': writeln('Nilai terkecil UAS adalah ',UASmin(Alpro1KS2,n));
         'c': writeln('Nilai terkecil Tugas adalah ',Tugasmin(Alpro1KS2,n));
         'd': writeln('Nilai terkecil Praktikum adalah ',Prakmin(Alpro1KS2,n));
         'e': writeln('Nilai terkecil NA adalah ',NAmin(Alpro1KS2,n):0:2);
     end;
end;
// Akhir Fungsi Minimum //

// Awal Fungsi Rata-rata //
function rerata_uts(list:kelas;n:integer):real;
var
    i:integer;
    temp:real;
begin
    temp:=0;
    for i:=1 to n do begin
        temp:=temp+list[i].UTS;
    end;
    rerata_uts:=temp/n;
end;

function rerata_uas(list:kelas;n:integer):real;
var
    i:integer;
    temp:real;
begin
    temp:=0;
    for i:=1 to n do begin
        temp:=temp+list[i].UAS;
    end;
    rerata_uas:=temp/n;
end;

function rerata_tugas(list:kelas;n:integer):real;
var
    i:integer;
    temp:real;
begin
    temp:=0;
    for i:=1 to n do begin
        temp:=temp+list[i].Tugas;
    end;
    rerata_tugas:=temp/n;
end;

function rerata_prak(list:kelas;n:integer):real;
var
    i:integer;
    temp:real;
begin
    temp:=0;
    for i:=1 to n do begin
        temp:=temp+list[i].Praktikum;
    end;
    rerata_prak:=temp/n;
end;

function rerata_akhir(list:kelas;n:integer):real;
var
    i:integer;
    temp:real;
begin
    temp:=0;
    for i:=1 to n do begin
        temp:=temp+list[i].NA;
    end;
    rerata_akhir:=temp/n;
end;

procedure rerata(list:kelas;n:integer);
var
  chose:char;
begin
  writeln('Nilai rata-rata berdasarkan: ');
  writeln('a. UTS        ');
  writeln('b. UAS        ');
  writeln('c. Tugas      ');
  writeln('d. Praktikum  ');
  writeln('e. Nilai Akhir');
  write  ('Masukkan Pilihan [a/b/c/d/e] ? : ');readln(chose);
  case chose of
    'a': writeln('Nilai rata-rata UTS adalah ',rerata_uts(Alpro1KS2,n):0:2);
    'b': writeln('Nilai rata-rata UAS adalah ',rerata_uas(Alpro1KS2,n):0:2);
    'c': writeln('Nilai rata-rata Tugas adalah ',rerata_tugas(Alpro1KS2,n):0:2);
    'd': writeln('Nilai rata-rata Praktikum adalah ',rerata_prak(Alpro1KS2,n):0:2);
    'e': writeln('Nilai rata-rata NA adalah ',rerata_akhir(Alpro1KS2,n):0:2);
  end;
end;
// Akhir Fungsi Rata-rata //

// Awal Fungsi Cari Nilai Mahasiswa //
function sequen(cari:string): integer;
var
   i:integer;
begin
   i:=1;
   while ((i<n) and (Alpro1KS2[i].Nama <> cari)) do
      i:= i+1;
   if Alpro1KS2[i].Nama = cari then sequen:=i
   else sequen:=0;
end;

procedure cari_mahasiswa;
var
  indeks: integer;
begin
   writeln('         Pencarian Nilai Mahasiswa Berdasarkan Nama');
   writeln;
   write('Masukan nama mahasiswa: '); readln(cari_nama);
   indeks:=sequen(cari_nama);
   writeln;
   if indeks <> 0 then
        writeln('Data Ditemukan! Nilai Akhir Alpro ',cari_nama,' = ',Alpro1KS2[indeks].NA:0:2,' (',Alpro1KS2[indeks].grade,')')
   else writeln('Data Tidak Ditemukan!');
end;
// Akhir Fungsi Cari Nilai Mahasiswa //

// Awal Fungsi Urutkan Nama //
procedure bubble_asc;
var
    i,j:integer;
    temp:tabel;
begin
    for i:=n downto 2 do
    begin
        for j:=1 to i-1 do
        if Alpro1KS2[j].Nama > Alpro1KS2[j+1].Nama then
        begin
            temp:=Alpro1KS2[j+1];
            Alpro1KS2[j+1]:=Alpro1KS2[j];
            Alpro1KS2[j]:=temp;
        end;
    end;
    writeln('Data Telah Diurutkan Berdasarkan Nama!');
    writeln;
    writeln('Untuk melihat kembali data yang telah terurut, silakan pilih nomor 1.');
end;
// Akhir Fungsi Urutkan Nama //

// Awal Fungsi Urutkan Nilai //
procedure bubble_desc;
var
    i,j:integer;
    temp:tabel;
begin
    for i:=n downto 2 do
    begin
        for j:=1 to i-1 do
        if Alpro1KS2[j].NA < Alpro1KS2[j+1].NA then
        begin
            temp:=Alpro1KS2[j+1];
            Alpro1KS2[j+1]:=Alpro1KS2[j];
            Alpro1KS2[j]:=temp;
        end;
    end;
    writeln('Data Telah Diurutkan Berdasarkan Nilai Alpro!');
    writeln;
    writeln('Untuk melihat kembali data yang telah terurut, silakan pilih nomor 1.');
end;
// Akhir Fungsi Urutkan Nilai //

begin
     clrscr;
     writeln('SELAMAT DATANG DI PROGRAM ENTRI NILAI MAHASISWA');
     writeln;
     writeln('Silakan input data nilai Alpro terlebih dahulu.');
     write('Jumlah Mahasiswa : ');readln(n);
     InputData(Alpro1KS2,n);
     1:
     clrscr;
     writeln('PILIH MENU');
     writeln('1. Tampilkan Data Mahasiswa');
     writeln('2. Nilai Alpro Terbesar');
     writeln('3. Nilai Alpro Terkecil');
     writeln('4. Rata-rata Nilai Alpro');
     writeln('5. Cari Nilai Mahasiswa');
     writeln('6. Urutkan Berdasarkan Nama');
     writeln('7. Urutkan Berdasarkan Nilai Alpro');
     writeln('8. Keluar');
     writeln;
     write('Pilihan Anda (1-8): ');readln(pilih);
     writeln;
     if pilih=8 then
     begin
         writeln('Terima kasih');readln;
         exit;
     end;
     case pilih of
         1: tampilan(Alpro1KS2,n);
         2: maksimum(Alpro1KS2,n);
         3: minimum(Alpro1KS2,n);
         4: rerata(Alpro1KS2,n);
         5: cari_mahasiswa;
         6: bubble_asc;
         7: bubble_desc;
     end;
     readln;
     goto 1;
end.