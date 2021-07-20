program penjumlahan_deret;
uses crt;
var
        f, N, jumlah : integer;
begin
clrscr;
        write('Masukkan banyaknya bilangan: '); readln(N);
        f := 1;
        jumlah := 0;
        repeat
        begin
                jumlah := jumlah + f;
                write(f,' + ');
                f := f+1;
        end;
        until f>N-1;
        jumlah := jumlah + f;
        write(f,' = ',jumlah);
        readln;
end.