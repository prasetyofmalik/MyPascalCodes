program array1;
uses crt;
var x:array[1..10] of integer;
terbesar,i:integer;
begin
clrscr;
for i:=1 to 10 do
begin
write('Input data ke-',i,' = ');
readln(x[i]);
end;
terbesar:=x[1];
for i:=2 to 10 do
if x[i]>terbesar then terbesar:=x[i];
writeln;
writeln('Nilai terbesarnya adalah: ',terbesar);
readln;
end.