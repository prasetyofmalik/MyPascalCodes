program data_nilai_mhs;

uses crt;
type mhs = record
     nama,nim,tgl:string;
     tugas,prak,uas,uts:integer;
     akhir:real;
     end;

var dtmhs:array [1..35] of mhs;
    i,a,uts_max,uas_max,uts_min,uas_min  :integer;
    akhir_min,akhir_max:Real;
    grade:string;
    pilih:integer;

procedure input;

begin
  clrscr;
  writeln(' ');
  writeln(' MASUKKAN DATA NILAI MAHASISWA ');
  writeln(' ----------------------------- ');
  write  (' Jumlah Mahasiswa : '); readln(a);
  writeln;
  for i:=1 to a do
  begin
  with dtmhs[i] do
     begin
     writeln(' Data Ke-',i);
     writeln(' ----------- ');
     write  (' Nama      : '); readln (dtmhs[i].nama);
     write  (' NIM       : '); readln (dtmhs[i].nim);
     write  (' Tugas     : '); readln (dtmhs[i].tugas);
     write  (' UTS       : '); readln (dtmhs[i].uts);
     write  (' UAS       : '); readln (dtmhs[i].uas);
     write  (' Praktikum : '); readln (dtmhs[i].prak);
     writeln;
     readln;
     end;
  end;
end;

procedure tabel;
begin
  writeln(' ');
  writeln('|===============================================================================================================|');
  writeln('|                    DATA NILAI MAHASISWA                                                                       |');
  writeln('|===============================================================================================================|');
  writeln('|NO.|  NAMA MAHASISWA  |     NIM     |   TUGAS   |   UTS   |    UAS   |    PRAK    |      NA       |    GRADE   |');
  writeln('|---------------------------------------------------------------------------------------------------------------|');
  for i:=1 to a do
  begin
  gotoxy(1,i+6);
  writeln('|   |                  |             |           |         |          |            |               |            |');
  writeln('|===============================================================================================================|');
  end;
end;

// Fungsi Maksimum
function utsmax(): Integer;
var
    max:Integer;
begin
  max:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].uts > dtmhs[max].uts) then max := i;
  end;
  utsmax:=dtmhs[max].uts;
end;


function uasmax(): Integer;
var
    max:Integer;
begin
  max:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].uas > dtmhs[max].uas) then max := i;
  end;
  uasmax:=dtmhs[max].uas;
end;

function tugasmax(): Integer;
var
    max:Integer;
begin
  max:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].tugas > dtmhs[max].tugas) then max := i;
  end;
  tugasmax:=dtmhs[max].tugas;
end;

function prakmax(): Integer;
var
    max:Integer;
begin
  max:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].prak > dtmhs[max].prak) then max := i;
  end;
  prakmax:=dtmhs[max].prak;
end;

function namax(): Real;
var
    max:Integer;
begin
  max:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].akhir > dtmhs[max].akhir) then max := i;
  end;
  namax:=dtmhs[max].akhir;
end;

// Fungsi minimum
function utsmin(): Integer;
var
    min:Integer;
begin
  min:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].uts < dtmhs[min].uts) then min := i;
  end;
  utsmin:=dtmhs[min].uts;
end;


function uasmin(): Integer;
var
    min:Integer;
begin
  min:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].uas < dtmhs[min].uas) then min := i;
  end;
  uasmin:=dtmhs[min].uas;
end;

function tugasmin(): Integer;
var
    min:Integer;
begin
  min:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].tugas < dtmhs[min].tugas) then min := i;
  end;
  tugasmin:=dtmhs[min].tugas;
end;

function prakmin(): Integer;
var
    min:Integer;
begin
  min:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].prak < dtmhs[min].prak) then min := i;
  end;
  prakmin:=dtmhs[min].prak;
end;

function namin(): Real;
var
    min:Integer;
begin
  min:=1;
  for i := 2 to a do
  begin
    if (dtmhs[i].akhir < dtmhs[min].akhir) then min := i;
  end;
  namin:=dtmhs[min].akhir;
end;

function maksimum(): Integer;
var
  chose: Char;
begin
  clrscr;
  writeln('a. Nilai UTS      ');
  writeln('b. Nilai UAS      ');
  writeln('c. Nilai Tugas    ');
  writeln('d. Nilai Praktikum');
  writeln('e. Nilai Akhir    ');
  write  ('Masukkan Pilihan [a/b/c/d/e] ? : ');readln(chose);
  case chose of
    'a': writeln('Nilai terbesar UTS adalah ',utsmax());
    'b': writeln('Nilai terbesar UAS adalah ',uasmax());
    'c': writeln('Nilai terbesar Tugas  adalah ',tugasmax());
    'd': writeln('Nilai terbesar Praktikum adalah ',prakmax());
    'e': writeln('Nilai terbesar NA adalah ',namax():0:2);
  end;
end;

function minimum(): Integer;
var
  chose: Char;
begin
  clrscr;
  writeln('a. Nilai UTS      ');
  writeln('b. Nilai UAS      ');
  writeln('c. Nilai Tugas    ');
  writeln('d. Nilai Praktikum');
  writeln('e. Nilai Akhir    ');
  write  ('Masukkan Pilihan [a/b/c/d/e] ? : ');readln(chose);
  case chose of
    'a': writeln('Nilai terbesar UTS adalah ',utsmin());
    'b': writeln('Nilai terbesar UAS adalah ',uasmin());
    'c': writeln('Nilai terbesar Tugas  adalah ',tugasmin());
    'd': writeln('Nilai terbesar Praktikum adalah ',prakmin());
    'e': writeln('Nilai terbesar NA adalah ',namin():0:2);
  end;
end;

function rerata_uts():real;
var
    temp:real;
begin
    temp:=0;
    for i:=1 to a do begin
        temp:=temp+dtmhs[i].uts;
    end;
    rerata_uts:=temp/a;
end;

function rerata_uas():real;
var
    temp:real;
begin
    temp:=0;
    for i:=1 to a do begin
        temp:=temp+dtmhs[i].uas;
    end;
    rerata_uas:=temp/a;
end;

function rerata_tugas():real;
var
    temp:real;
begin
    temp:=0;
    for i:=1 to a do begin
        temp:=temp+dtmhs[i].tugas;
    end;
    rerata_tugas:=temp/a;
end;

function rerata_prak():real;
var
    temp:real;
begin
    temp:=0;
    for i:=1 to a do begin
        temp:=temp+dtmhs[i].prak;
    end;
    rerata_prak:=temp/a;
end;

function rerata_akhir():real;
var
    temp:real;
begin
    temp:=0;
    for i:=1 to a do begin
        temp:=temp+dtmhs[i].akhir;
    end;
    rerata_akhir:=temp/a;
end;

function rerata_semua(): real;
var
  chose: Char;
begin
  clrscr;
  writeln('a. Rata-rata UTS      ');
  writeln('b. Rata-rata UAS      ');
  writeln('c. Rata-rata Tugas    ');
  writeln('d. Rata-rata Praktikum');
  writeln('e. Rata-rata Akhir    ');
  write  ('Masukkan Pilihan [a/b/c/d/e] ? : ');readln(chose);
  case chose of
    'a': writeln('Nilai rata-rata UTS adalah ',rerata_uts():0:2);
    'b': writeln('Nilai rata-rata UAS adalah ',rerata_uas():0:2);
    'c': writeln('Nilai rata-rata Tugas  adalah ',rerata_tugas():0:2);
    'd': writeln('Nilai rata-rata Praktikum adalah ',rerata_prak():0:2);
    'e': writeln('Nilai rata-rata NA adalah ',rerata_akhir():0:2);
  end;
end;
procedure output;
var
  chose: Integer;
 begin
 clrscr;
 tabel;
 for i:=1 to a do
 begin
   dtmhs[i].akhir := (0.1*dtmhs[i].tugas) + (0.3*dtmhs[i].uts) + (0.3*dtmhs[i].uas) + (0.3*dtmhs[i].prak);
   with dtmhs[i] do
   begin
        if (akhir>=0)  and (akhir < 20) then grade:='E' else
        if (akhir>=20) and (akhir < 40) then grade:='D' else
        if (akhir>=40) and (akhir < 60) then grade:='C' else
        if (akhir>=60) and (akhir < 80) then grade:='B' else
        grade:='A' ;
   end;
 end;
 for i:=1 to a do
 begin
   with dtmhs[i] do
   begin
     gotoxy(3,i+6); writeln(i);
     gotoxy(9,i+6); writeln(nama);
     gotoxy(26,i+6);writeln(nim);
     gotoxy(43,i+6);writeln(tugas);
     gotoxy(56,i+6);writeln(uts);
     gotoxy(69,i+6);writeln(uas);
     gotoxy(82,i+6);writeln(prak);
     gotoxy(95,i+6);writeln(akhir:0:2);
     gotoxy(108,i+6);writeln(grade);
   end;
 end;
 readln;
end;

begin
  // repeat
  clrscr;
  writeln('|     SELAMAT DATANG DI PROGRAM ENTRI MAHASISWA     |');
  writeln('|===================================================|');
  writeln('|                                                   |');
  writeln('| 1. Input Data Mahasiswa                           |');
  writeln('| 2. Tampilan Data Mahasiswa                        |');
  writeln('| 3. Nilai Alpro Terbesar                           |');
  writeln('| 4. Nilai Alpro Terkecil                           |');
  writeln('| 5. Rata-rata Nilai Alpro                          |');
  writeln('| 6. Keluar                                         |');
  writeln('|===================================================|');
  writeln(' ');
  write  ('Masukkan Pilihan [1/2/3/4/5/6] ? : ');readln(pilih);
      case pilih of
      1 : input;
      2 : output;
      3 : maksimum;
      4 : minimum;
      5 : rerata_semua();
      6 : writeln('Terima kasih');
      end;
  // until pilih=6;
  write('Ingin menampilkan apa[2/3/4/5/6] ?');readln(pilih);
  case pilih of
    2: output;
    3: maksimum;
    4: minimum;
    5: rerata_semua();
    6: writeln('Terima kasih');
  end;
end.