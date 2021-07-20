program rerete;
uses crt;
var
  n,i,bil,jml: integer;
  rata:real;
begin
  clrscr;
  write('masukkan jumlah bilangan n: ');readln(n);
  for i:=1 to n do
    begin
      write('masukkan bil. ke-',i,': ');readln(bil);
      jml:=bil+jml;
    end;
  rata:=jml/n;
  write('rata-rata bilangan: ',rata:2:2);
  readln;
end.