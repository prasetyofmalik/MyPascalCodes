program array2;
uses crt;
var x:array[1..3,1..4] of integer;
begin
clrscr;
x[1,3]:=10;
writeln(x[1,3]);
readln;
end.