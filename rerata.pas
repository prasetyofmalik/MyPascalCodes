program hitungrerata;
uses crt;
const
  n = 5;

var
  a,b,c,d,e :integer;
  total : integer;
  rerata : real;

begin
  write('inputkan data pertama: ');
  readln (a);
  write('inputkan data kedua:   ');
  readln (b);
  write('inputkan data ketiga:  ');
  readln (c);
  write('inputkan data keempat: ');
  readln (d);
  write('inputkan data kelima:  ');
  readln (e);
  total := a + b + c + d + e;
  rerata := total / 5;
  writeln('n : ', n);
  writeln;
  writeln ('Data pertama: ', a:8);
  writeln ('Data kedua: ', b:8);
  writeln ('Data ketiga: ', c:8);
  writeln ('Data keempat: ', d:8);
  writeln ('Data kelima: ', e:8);
  writeln ('=================');
  writeln ('Total: ', total:12);
  writeln ('Rata-rata: ', rerata:10:1);
  readln;
end.
