program umur;

var
    h0, h1, b0, b1, t0, t1, hari, bulan, tahun, uji, hasil, tambah: integer;

begin
    writeln('Kapan anda lahir ?');
    writeln('Silakan input dalam format dd-mm-yyyy:');
    
    write('Tanggal : ');
    readln(h0);
    write('Bulan   : ');
    readln(b0);
    write('Tahun   : ');
    readln(t0);

    writeln('Sekarang tanggal berapa ?');
    writeln('Silakan input dalam format dd-mm-yyyy:');

    write('Tanggal : ');
    readln(h1);
    write('Bulan   : ');
    readln(b1);
    write('Tahun   : ');
    readln(t1);

    if ((h0<=h1) and (b0<=b1)) or ((h0<=h1) or (b0<=b1)) then
    begin
        hari := h1 - h0;
        bulan:= b1 - b0;
        tahun:= t1 - t0;
    end;

    if (b0>b1) then
    begin
        hari := h1 - h0;
        bulan:= 12 + b1 - b0;
        tahun:= t1 - t0 - 1;
    end;

    if (h0>h1) then
    begin
        hari := 30 + h1 - h0;
        bulan:= b1 - b0 - 1;
        tahun:= t1 - t0;
    end;

    if (h0>h1) and (b0>b1) then
    begin
        hari := 31 + h1 - h0;
        bulan:= 11 + b1 - b0;
        tahun:= t1 - t0 - 1;
    end;

    if (t0=t1) then
    begin
        hari := h1 - h0;
        bulan:= b1 - b0;
        tahun:= 0;
    end;
    
    tambah:=1;
    hasil:=0;
    uji:=t0;
    
    //Menguji pakah suatu tahun dalam rentang umur merupakan kabisat
    while (uji<=t1) do
    begin
        if (uji mod 4 = 0) then
        begin
            tambah := 4;
            hasil  := hasil + 1;
        end
        else;
        uji := uji + tambah;
    end;
    writeln;
    writeln('Umur Anda saat ini ',tahun,' tahun, ',bulan,' bulan, ',hari,' hari.');
    writeln('Anda sudah melewati ',hasil,' tahun kabisat.');
    readln;
end.