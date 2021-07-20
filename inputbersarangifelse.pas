program Nilai;

uses crt;
var n : integer;
begin
        clrscr;
    write('Masukkan nilai Anda = ');readln(n);writeln(n);
    if (n>=0) and (n<=100) then
        if n < 60 then
            writeln('Anda Gagal')
        else if n < 80 then
            writeln('Anda Cadangan')
        else
            writeln('Anda Lulus')
    else
        writeln('maaf Anda salah input nilai');
    writeln('Terima kasih');
    readln;
end.