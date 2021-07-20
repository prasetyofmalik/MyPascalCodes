program modulo;
uses crt;
var m, n, q : integer;

begin
 clrscr;
  writeln('Modulo Operation');
  writeln;
  write('  insert number : '); readln(m);
  write('  insert divider: '); readln(n);
   q := m mod n;
  if m >= n then
   writeln('  ', m, ' mod ', n, ' = ', q)
  else
   writeln('  error 404');
 readln;
end.