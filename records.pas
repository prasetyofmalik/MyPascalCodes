program records;
uses crt;
type datapeg= record
        nama: string[20];
        masuk: record
          tgl: byte;
          bln: byte;
          thn: integer;
        end;
        alamat: record
          jalan: string[20];
          kota: string[20];
        end;
        gaji: record
          pokok,lembur,tg: real;
        end;
     end;
var pegawai: datapeg;
begin
    pegawai.nama:='PrasetyoFajarMalik';
    pegawai.masuk.tgl:= 1;
    pegawai.masuk.bln:= 1;
    pegawai.masuk.thn:= 1;
    pegawai.alamat.jalan:= '1';
    pegawai.alamat.kota:= '1';
  {  pegawai.gaji.pokok:= 200;
    pegawai.gaji.lembur:= 200;
    pegawai.gaji.tg:= 200; }
  writeln('Nama: ',pegawai.nama);
  writeln('Tanggal: ',pegawai.masuk.tgl);
  write('gaji: '); readln(pegawai.gaji.pokok);
  readln;
end.
