program wildu;
uses crt;
label 1;
var
  i,n,a: integer;
  jml: real;

begin
  clrscr;
  writeln('Program Jumlah Deret Ganjil');
  1: write('Masukkan bilangan ganjil positif: ');
  readln(n);
  if (n mod 2 = 0) then goto 1;
  i:=3;
  a:=2;
  jml:=1;
  write('Deret angka: 1');
  while i<=n do
    begin
      if (a mod 2 = 0) then
        begin
          write(' - 1/',i);
          jml:=jml-1/i;
        end
      else
        begin
          write(' + 1/',i);
          jml:=jml+1/i;
        end;
      i:=i+2;
      a:=a+1;
    end;
    writeln(' = ',jml:0:2);
  readln;
end.
