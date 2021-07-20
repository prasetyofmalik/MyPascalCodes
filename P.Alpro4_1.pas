program BonusPegawai;
uses crt;
var
golongan : string;
lama_bekerja, umur : integer;
label 1;
begin
    clrscr;
1:  write('Masukkan golongan Anda = ');readln(golongan);
    if (golongan <> 'staf') and (golongan <> 'nonstaf') then
       begin
       writeln('Maaf Anda salah input, input sekali lagi {golongan : staf atau nonstaf}');
       goto 1;
       end
    else if (golongan = 'staf') or (golongan = 'nonstaf') then
    write('Berapa tahun Anda telah bekerja di sini = ');read(lama_bekerja);
    write('Masukkan umur Anda = ');read(umur);
    if (umur < lama_bekerja) or (umur > 99) then
    writeln('error')
    else
    if golongan = 'staf' then
       begin
       if (lama_bekerja >= 5) and (umur >= 50) then
           writeln('Selamat, Anda mendapat bonus Rp 1 juta')
       else
           writeln('Selamat, Anda memdapat bonus Rp 500 ribu')
       end
    else if golongan = 'nonstaf' then
       begin
       if lama_bekerja >= 5 then
           if umur >= 50 then
                writeln('Selamat, Anda mendapat bonus Rp 400 ribu')
           else
                writeln('Selamat, Anda mendapat bonus Rp 250 ribu')
       else
           writeln('Maaf, Anda belum mendapat bonus')
       end;
        readln;
        readln;
end.