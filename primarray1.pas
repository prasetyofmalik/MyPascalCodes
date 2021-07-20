program bilprima;
uses crt;
type deret:=array[1..100] of integer;
var
    i, k, jumlah, total: integer;
    angka_prima:deret;

procedure input_jumlah;
begin
    write('Masukkan jumlah bilangan prima: ');
    readln(jumlah);
end;
function uji_prima(n:integer):boolean;
var
    j       :integer;
    prima   :boolean;
begin
    prima:=true;
    for j:=2 to round(sqrt(n)) do
        if (n mod j = 0) then prima:=false
    else;
    if (prima=true) then uji_prima:=prima;
end;

procedure input_prima(var hasil:deret;tot:integer);
var i:integer;
    begin
        if uji_prima(n)
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
