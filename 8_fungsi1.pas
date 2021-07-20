program fungsi;
uses crt;
function luas_lingkaran(r:real):real;
begin
  luas_lingkaran:=pi*r*r;
end;
var luas:real;
begin
  clrscr;
  luas:= luas_lingkaran(10);
  write('Luas = ',luas:0:2);
  readln;
end.