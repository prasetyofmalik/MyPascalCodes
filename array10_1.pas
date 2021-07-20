program array1;
uses crt;
var x:array[1..5] of integer;
begin
clrscr;
x[1]:=10;
x[2]:=x[1]-5;
x[3]:=x[2]+x[1];
writeln(x[3]);
readln;
end.