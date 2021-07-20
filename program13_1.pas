program program13_1;
uses crt;
type
    larik = array [1..100] of integer;

procedure BinarySearch(A:larik;X,low,high:integer);
var
    mid:integer;
begin
    if low > high then write(0) {tidak ditemukan}
    else begin
        mid := (low + high) div 2;
        if A[mid] = X then write(mid) {ditemukan}
        else if A[mid] > X then BinarySearch(A,X,low,mid-1)
        else BinarySearch(A,X,mid+1,high);
    end;
end;

var
    A: larik;
    low,mid,high,i,n,x:integer;

begin
    clrscr;
    write('Masukkan panjang array: ');readln(n);
    writeln('Masukkan nilai dari array: ');
    for i := 1 to n do readln(A[i]);
    low :=1;
    high:=N;
    clrscr;
    write('Masukan data yang ingin dicari: ');readln(X);
    write('Data ditemukan pada indeks ke-');
    BinarySearch(A,X,low,high);
    readln;
end.
