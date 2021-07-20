program primaa;
uses crt;
var
  i,m,n:integer;
  isprima:boolean;
begin
  clrscr;
  write('masukkan sebuah bilangan: ');readln(n);
  isprima:=true;
  m:=round(sqrt(n));
  for i:=2 to m do
    if (n mod i)=0 then
    begin
      isprima:=false;
      break;
    end;
  if isprima=true then writeln(n,' adalah bilangan prima')
  else writeln(n,' bukan bilangan prima');
  readln;
end.