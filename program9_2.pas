program prosedurjumlah2;
uses crt;
var
     x,y,jml:integer;
procedure jumlah(a,b:integer; var c:integer);
begin
     c:=a+b;
end;
begin
     clrscr;
     write('input bilangan: ');readln(x);
     write('ditambah: ');readln(y);
     jumlah(x,y,jml);
     write('jumlah ',x,' + ',y,' = ',jml);
     readln;
end.
