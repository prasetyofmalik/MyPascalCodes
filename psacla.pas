Program Segitigapascal;
uses crt;
type pas=array[1..20,1..20] of longint;
var pascal:pas;
 i,j,n:integer;
begin
 clrscr;
 pascal[1,1]:=1;
 write('banyak level : ');readln(n);
   for i:=2 to n do
   begin
     pascal[i,1]:=1;
     pascal[i,i]:=1;
       for j:=2 to i-1 do
         pascal[i,j]:=pascal[i-1,j-1]+pascal[i-1,j];
   end;
   for i:=1 to n do
   begin
     for j:=1 to i do
       write(pascal[i,j],' ');
       writeln;
   end;
   readln;
end.

