program selection;
uses crt;
var food:integer;
begin
 clrscr;
 write('select your favorite number : ');readln(food);
 if food <=9 then write('congratulations, you get ');
 case food of
  1 : write('nasi goreng');
  2 : write('sate');
  3 : write('rendang');
  4 : write('mi goreng');
  5 : write('gado-gado');
  6 : write('bakso');
  7 : write('soto ayam');
  8 : write('mi ayam');
  9 : write('nasi kuning');
 else
  writeln('error 404');
 end;
 readln;
end.
