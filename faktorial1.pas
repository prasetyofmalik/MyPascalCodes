program faktorial;
uses crt;
var
i,n:integer;
fk: longint;
begin
clrscr;
write('Input angka: ');readln(n);
fk:=1;
i:=1;
repeat
fk:=fk*i;
i:=i+1;
until i>n;
writeln(n, '! = ',fk);
readln;
end.
