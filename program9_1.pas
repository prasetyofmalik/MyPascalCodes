program prosedurjumlah1;
uses crt;
var
     x,y,jml:integer;
procedure jumlah(a,b:integer);
begin
     jml:=a+b;
end;
begin
     clrscr;
     write('input bilangan: ');readln(x);
     write('ditambah: ');readln(y);
     jumlah(x,y);
     write('jumlah ',x,' + ',y,' = ',jml);
     readln;
end.
