program primenum;
uses crt;
var
  i,j,n: longint;
  k: real;
label f;
begin
  clrscr;
  write('Masukkan bilangan : ');readln(n);
  for i:=n downto 2 do
  begin
    for j:=2 to i-1 do
    begin
      k:= i mod j;
        if k=0 then goto f;
    end;
    writeln('bilangan prima terdekat sebelum bilangan tersebut: ',i);
    break;
    f:
  end;
  readln;
end.
