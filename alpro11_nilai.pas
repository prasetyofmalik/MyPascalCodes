program nilaialproks2;
uses crt;
type tabel= record
        nim: string[9];
        nama: string[20];
        tugas,uts,uas,praktikum: byte;
        NA: real;
        grade: char;
     end;
     kelas=array[1..40] of tabel;

function NAkhir(a,b,c,d:integer):real;
begin
   NAkhir:=(a+3*(b+c+d))/10;
end;

function grading(a:real):char;
var hasil:char;
begin
   case trunc(a) of
      0..19 : hasil:='E';
      20..39 : hasil:='D';
      40..59 : hasil:='C';
      60..79 : hasil:='B';
      80..99 : hasil:='A';
   end;
   grading:=hasil;
end;

procedure inputdata(var list:kelas;n:integer);
var i:integer;
begin
   for i:=1 to n do
   begin
      writeln('Mahasiswa ke-',i);
      with list[i] do
      begin
         write('NIM      : ');readln(NIM);
         write('Nama     : ');readln(nama);
         write('Tugas    : ');readln(tugas);
         write('UTS      : ');readln(uts);
         write('UAS      : ');readln(uas);
         write('Praktikum: ');readln(praktikum);
         NA:=NAkhir(Tugas,UTS,UAS,Praktikum);
         Grade:=grading(NA);
      end;
   end;
end;

procedure output(list:kelas;n:integer);
var i:integer;
begin
   writeln('No ':5,'NIM ':10,'Nama ':20,'Tugas ':8,'UTS ':8,'UAS ':8,'Praktikum ':9,'NA ':8,'Grade ':5);
   for i:=1 to n do
   begin
      write(i:5);
      with list[i] do
         write(NIM:10,Nama:20,Tugas:8,UTS:8,UAS:8,Praktikum:9,NA:8:1,Grade:5);
      writeln;
   end;
end;

var
   Alpro1ks2:kelas;
   n:integer;

begin
   clrscr;
   write('Jumlah Mahasiswa: ');
   readln(n);
   inputdata(Alpro1ks2,n);
   writeln('Daftar Nilai Mata Kuliah Algoritma Pemrograman 1KS2 T.A. 2020/2021');
   writeln;
   output(Alpro1KS2,n);
   readln;
end.