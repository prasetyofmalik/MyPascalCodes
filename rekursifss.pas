program rekursifs;
uses crt;
var a:integer;

procedure tulis_1(banyak:integer; kata:string);
begin
    if banyak>1 then tulis_1(banyak-1,kata);
    writeln(kata,banyak);
end;

procedure tulis_2(banyak:integer; kata:string);
begin
    writeln(kata,banyak);
    if banyak>1 then tulis_2(banyak-1,kata);
end;

begin
    clrscr;
    write('Masukkan bilangan: ');readln(a);
    tulis_2(a,'Cetakan ke ');
    readln;
end.
