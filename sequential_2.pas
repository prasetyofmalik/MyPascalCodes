program sequential_2;  // Data terurut
uses crt;
type
    larik = array [1..100] of integer;

var
    data:larik;
    i,n,cari,hasil:integer;

procedure SequentialSearch(A:larik; n:integer; x:integer; var y:integer);
var
    i:integer;
begin
    i:=1;
    while (i<n) and (A[i]<x)  do
    begin
        i:=i+1;
    end;
    if (A[i]<>x) then y:=0
    else y:=i;
end;

begin
    clrscr;
    writeln('Program Sequential Search Terurut');
    writeln;
    write('Masukkan jumlah data: ');readln(n);
    for i:=1 to n do
    begin
        write('Data ke-',i,': ');readln(data[i]);
    end;
    clrscr;
    writeln('Program Sequential Search Terurut');
    writeln;
    write('Masukkan data yang ingin dicari: ');readln(cari);
    SequentialSearch(data,n,cari,hasil);
    if hasil=0 then writeln('Data tidak ditemukan!')
    else write('Data ditemukan pada indeks: ',hasil);
    readln;
end.