program nestedfor;
uses crt;
var i,j,k,l,x:integer;
begin
clrscr;
write('masukkan angka kurang dari 10: ');readln(x);
for i:=10 downto x do
     begin
     write(i);
     for j:=i-1 downto (i-3) do
     begin
     write(' ');
     write(j);
    // writeln;
     end;

  {   write(' ');
     if i>=7 then j:=1
     else j:=2;
     write(j);

     write(' ');

     if i>=9 then k:=1
     else k:=2;
     write(k);

     write(' ');
     if i>=10 then l:=1
     else l:=2;
     write(l);  }
     writeln;
     end;
     readln
end.

