program if_statement;
uses crt;
var usia : integer;

begin
 clrscr;
 write('masukkan usia Anda = '); readln(usia);
  if usia >=17 then
   writeln('Anda berhak me-unsubscribe channel Atta ')
  else
   writeln('Silakan subscribe Atta, karena subscribe itu gratis. Assiaapp');
 readln;
end.