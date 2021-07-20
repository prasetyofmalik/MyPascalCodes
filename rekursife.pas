program rekursifinf;
uses crt;
var a:integer;

function sum(x:integer):integer;
var i,result:integer;
begin
    result:=0;
    for i:=1 to x do result:=result+i;
    sum:=result;
    writeln(sum);
end;

begin
    clrscr;
    write('Masukkan bilangan: ');readln(a);
    sum(a);
    readln;
end.
