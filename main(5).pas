program records;
uses crt;
type
    data_mahasiswa = record
    nim : string[10];
    nama : record
        depan : string[10];
        blkg : string[10];
    end;
    alamat : string[20];
    nilai : longint;
end;
var
    mahasiswa : array[1..10] of data_mahasiswa;
    n,i:integer;
begin
    clrscr;
    write('Input jumlah mahasiswa: ');readln(n);
    for i:=1 to n do
    begin
        writeln('Input mahasiswa ke-',i);
        with mahasiswa[i] do
        begin
            write('NIM : ');readln(nim);
            write('Nama Depan: ');readln(nama.depan);
            write('Nama Belakang: ');readln(nama.blkg);
            write('Alamat : ');readln(alamat);
            write('Nilai : ');readln(nilai);
        end;
    end;
    clrscr;
    for i:=1 to n do
    begin
        writeln('Data mahasiswa ke-',i);
        with mahasiswa[i] do
        begin
            writeln('NIM    : ',nim);
            writeln('Nama   : ',nama.depan,' ',nama.blkg);
            writeln('Alamat : ',alamat);
            writeln('Nilai  : ',nilai);
        end;
        writeln;
    end;
    readln;
end.