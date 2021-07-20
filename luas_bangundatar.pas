Program Hitung_Luas;
 uses crt;
  const
    pi=3.14159265358979;
  var
    p,l,t,r,luas:real;
    pilih:integer;
label awal,akhir;
begin
    clrscr;
    writeln(' Selamat Datang di Program Operasi Matematika');
    writeln(' 1. Hitung Luas Persegi');
    writeln(' 2. Hitung Luas Persegi Panjang');
    writeln(' 3. Hitung Luas Segitiga');
    writeln(' 4. Hitung Luas Lingkaran');
    writeln(' 0. Keluar');
    awal :
    writeln;
    writeln('===========================');
    write(' Pilihan Anda: ');readln(pilih);
    case pilih of
    1: begin
              write(' panjang= ');readln(p);
              luas:=p*p;
              writeln(' Luas persegi dengan panjang ',p:0:1,' adalah ',luas:0:1);
              writeln;
              writeln(' Pilih angka selanjutnya {1,2,3, atau 4} jika ingin melakukan operasi lain. Jika tidak, pilih angka 0.');
              goto awal;
       end;

    2: begin
              write(' panjang= ');readln(p);
              write(' lebar  = ');readln(l);
              luas:=p*l;
              writeln(' Luas persegi panjang ukuran ',p:0:1,' X ',l:0:1,' adalah ',luas:0:1);
              writeln;
              writeln(' Pilih angka selanjutnya {1,2,3, atau 4} jika ingin melakukan operasi lain. Jika tidak, pilih angka 0.');
             goto awal;
       end;

    3: begin
              write(' alas  = ');readln(p);
              write(' tinggi= ');readln(t);
              luas:=p*t;
              writeln(' Luas segitiga ukuran ',p:0:1,' X ',t:0:1,' adalah ',luas:0:1);
              writeln;
              writeln(' Pilih angka selanjutnya {1,2,3, atau 4} jika ingin melakukan operasi lain. Jika tidak, pilih angka 0.');
             goto awal;
       end;

    4: begin
              write(' jari-jari= ');readln(r);
              luas:=pi*r*r;
              writeln(' Luas lingkaran dengan jari-jari ',r:0:1,' adalah ',luas:0:1);
              writeln;
              writeln(' Pilih angka selanjutnya {1,2,3 atau 4} jika ingin melakukan operasi lain. Jika tidak, pilih angka 0.');
              goto awal;
       end;

    0: goto akhir;
       end;
       akhir :
              writeln(' Terima Kasih');
       readln;
end.
