program nim_stis;
uses crt;
var
  NIM  : longint;
  nama : string;
begin
  clrscr;
    NIM  :=222011325;
    nama := 'Prasetyo Fajar Malik';
    writeln('NIM mahasiswa Polstat STIS');
    write('Masukkan Nama: '); readln(nama);
    if nama = 'Prasetyo Fajar Malik' then
     writeln('NIM: ',NIM)
    else
     writeln('NIM is unknown');
  readln;
end.
