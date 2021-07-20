program binary;
uses crt;
type larik = array[1..100] of integer;

var
    data: larik;
    i,n,cari,hasil: integer;

function  BinarySearch(A:larik; n,x:integer):integer;
var
    low,mid,high:integer;
begin
    low:=1;
    high:=n;
    while (low<=high) do
    begin
        mid:=(low+high) div 2;
        if (A[mid]>x) then high:=mid-1
        else if (A[mid]<x) then low:=mid+1
        else break;
    end;
    if A[mid]=x then hasil:=mid //ditemukan
    else hasil:=0; //tidak ditemukan
end;

begin
    writeln('Program Binary Search');
    writeln;
    write('Masukkan jumlah data: ');readln(n);
    for i:=1 to n do
    begin
        write('Masukkan data ke',i,': ');read(data[i]);
    end;
    clrscr;
    writeln('Program Binary Search');
    writeln;
    write('Masukkan data yang ingin dicari: ');readln(cari);
    BinarySearch(data,n,cari);
    if hasil=0 then writeln('Data tidak ditemukan!')
    else write('Data ditemukan pada indeks: ',hasil);
    readln;
end.
