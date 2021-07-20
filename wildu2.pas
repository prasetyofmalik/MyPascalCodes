program waildu2;
uses crt;
var
n,angka: integer;
begin
clrscr;
write('Masukkan jumlah angka : ');
readln(n);
angka:=1;
        while angka <= n do
        begin
        writeln(angka);
        angka:=angka+1;
        end;
readln;
end.