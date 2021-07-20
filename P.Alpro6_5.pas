program latripit;
uses crt;
var
  n,i,angka,tot: integer;
  rerata: real;

begin
  clrscr;
  write('Masukkan jumlah bilangan N: ');readln(n);
  i:=1;
    repeat
      write('Masukkan bilangan ke-',i,':');
      readln(angka);
      if angka mod 2 = 0 then
      tot:=tot+angka;
      i:=i+1;
    until i>n;
      writeln('Jumlah bilangan genap = ',tot);
      readln;
end.


