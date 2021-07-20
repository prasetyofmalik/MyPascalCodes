program sequential_1;
uses crt;
type
    larik = array [1..100] of integer;

var
    data,hasil:larik;
    i,n,cari,jml:integer;

procedure SequentialSearch(A:larik; n:integer; x:integer);
var
    i:integer;
begin
    i:=1;
    while (i<=n) do
    begin
        if (A[i]=x) then
        begin
            jml:=jml+1;
            hasil[jml]:=i;
        end;
        i:=i+1;
    end;
end;

begin
    clrscr;
    writeln('Program Sequential Search Tidak Terurut');
    writeln;
    write('Masukkan jumlah data: ');readln(n);
    for i:=1 to n do
    begin
        write('Data ke-',i,': ');readln(data[i]);
    end;
    clrscr;
    writeln('Program Sequential Search Tidak Terurut');
    writeln;
    write('Masukkan data yang ingin dicari: ');readln(cari);
    SequentialSearch(data,n,cari);
    if jml=0 then writeln('Data tidak ditemukan!')
    else begin
        write('Data ditemukan pada indeks: ');
        for i:=1 to jml do write(hasil[i]:3);
    end;
    readln;
end.