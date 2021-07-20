program GenapGanjil;
uses crt;
var n:integer;

begin
    clrscr;
    write(' n = ');readln(n);writeln(n);
    if n mod 2 = 0 then
        writeln('Anda menginput bilangan genap')
    else writeln('Anda menginput bilangan ganjil');
    readln;
end.
