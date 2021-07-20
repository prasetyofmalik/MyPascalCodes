program matkul;
uses crt;
var
namahari,senin,selasa,rabu,kamis,jumat,sabtu,minggu : string;

begin
    clrscr;
    write('Masukkan nama hari = ');readln(namahari);
    write('Mata kuliah hari ',namahari,' adalah ');

    case namahari of
    'senin' :writeln('Algoritma dan Pemrograman I');
    'selasa':writeln('Kalkulus');
    'rabu'  :writeln('Bahasa Indonesia');
    'kamis' :writeln('Pengantar Teknik Informatika');
    'jumat' :writeln('Bahasa Inggris');
    'sabtu' :writeln('Basis Data');
    'minggu':writeln('hari ini kamu libur');
     else;
       writeln('kmu gatau nama hari ya');
     end;
     readln;
end.
