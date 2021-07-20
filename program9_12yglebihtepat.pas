program prosedurjumlah1;
uses crt;
var
     x,y:integer;
function jumlah(a,b:integer):integer;
begin
     jumlah:=a+b;
end;
begin
     clrscr;
     write('input bilangan: ');readln(x);
     write('ditambah: ');readln(y);
     write('jumlah ',x,' + ',y,' = ',jumlah(x,y));
     readln;
end.
