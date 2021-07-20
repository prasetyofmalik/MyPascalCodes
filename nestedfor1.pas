program nestedfor1;
uses crt;
var n,i,j:integer;
    prima:boolean;
begin
    clrscr;
    write('input bilangan : ');readln(n);
    for i:=2 to n do
    begin
    for j:=2 to i do
       if i mod j=0 then break;
       if j=i then
       write(j,' ');
    end;
    readln;
end.