program factorial;
uses crt;
function fact(n: integer): longint;
begin
   if (n = 0) then
      fact := 1
   else
      fact := n * fact(n - 1);
end;

var
   n :integer;

begin
  clrscr;
     writeln('Factorial Calculator');
     writeln;
     write('insert number : '); readln(n);
     writeln(n, '! = ', fact(n));
  readln;
end.
