Program Belajar_fungsi;
uses crt;
var n,hasil,hasil2:integer;

  Function Pangkat2(a:integer):integer;
  begin
    hasil:=a*a;
    hasil2:=a+7;
  end;
begin
  clrscr;
  write(' N= ');readln(n);
  writeln(' Pangkat 2 dari ',n,'= ',pangkat2(n));
  readln
end.