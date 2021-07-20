program Factorial_Program;

function fakiter(n:integer):longint;
var i : integer; hasil: longint;
begin
    hasil :=1;
    for i := 1 to n do
        hasil := hasil*i;
    fakiter := hasil;
end;

function fakrek(n:integer):longint;
begin
    if n = 1 then
        fakrek := 1
    else
        fakrek := n*fakrek(n-1);
end;

var 
    number, nfactorial:longint;
begin
  write('Enter the number for factorial: ');
  readln(number);
  write('menggunakan iterasi ');
  nfactorial := fakiter(number);
  writeln(number,'! = ',nfactorial);
  write('menggunakan rekursi ');
  nfactorial := fakrek(number);
  writeln(number,'! = ',nfactorial);
end.