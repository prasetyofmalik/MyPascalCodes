program tipe_real;
uses crt;

var
 a : real;
 b : single;
 c : double;
 d : extended;
 e : comp;

begin
  clrscr;
  a := 12345.6789;
  b := 12345.6789;
  c := 12345.6789;
  d := 12345.6789;
  e := sqrt(69);

  writeln('a : ', a:5:4);
  writeln('b : ', b:5:4);
  writeln('c : ', c:5:4);
  writeln('d : ', d:5:4);
  writeln('e : ', e:5:4);
  readln;
end.