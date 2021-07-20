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
      tot:=tot+angka;
      i:=i+1;
    until i>n;
      rerata:=tot/n;
      writeln('Rata-rata bilangan = ',rerata:0:2);
      readln;
end.


