program ripit2;
uses crt;
var
n,angka:integer;
begin
clrscr;
write('Masukkan jumlah angka: ');
readln(n);
angka:=1;
repeat
        begin
        writeln(angka);
        angka:=angka+1;
        end;
until angka>n;
readln;
end.