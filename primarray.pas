program bilprima;
uses crt;
var
    i, k, jumlah, total: integer;
    angka_prima:array[1..100] of integer;

procedure input_jumlah;
begin
    write('Masukkan jumlah bilangan prima: ');
    readln(jumlah);
end;
procedure uji_prima(n:integer);
var
    j       :integer;
    prima   :boolean;
begin
    prima:=true;
    for j:=2 to n-1 do
        if (n mod j = 0) then prima:=false
    else;
    if (prima=true) then
    begin
        angka_prima[i]:=n;
        i:=i+1;
        total:=total+1;
    end;
end;

procedure display;
begin
    for i:=1 to total-1 do
        writeln('Angka Prima ke-',i,' :',angka_prima[i]);
    readln;
end;

begin
clrscr;
input_jumlah;
total:=0;i:=1;
    k:=2;
    while (total<=jumlah) do
    begin
        uji_prima(k);
        k:=k+1;
    end;
    display;
end.