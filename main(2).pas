program Fibonacci_Program;

function fiboiter(n:integer):integer;
var i,fn,fn_1,fn_2 : integer;
begin
    fn :=1; fn_1 := 1; fn_2 := 1;
    for i := 3 to n do
    begin
        fn := fn_1 + fn_2;
        fn_2 := fn_1;
        fn_1 := fn;
    end;
    fiboiter := fn;
end;

function fiborek(n:integer):integer;
begin
    if (n = 1) or (n = 2) then
        fiborek := 1
    else
        fiborek := fiborek(n-1)+fiborek(n-2);
end;

var 
    number, nfibonacci:integer;
begin
  write('Enter the number for fibonacci: ');
  readln(number);
  write('menggunakan iterasi ');
  nfibonacci := fiboiter(number);
  writeln('f(',number,') = ',nfibonacci);
  write('menggunakan rekursi ');
  nfibonacci := fiborek(number);
  writeln('f(',number,') = ',nfibonacci);
end.