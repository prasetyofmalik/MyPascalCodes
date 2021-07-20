program prosedur1;
uses crt;
procedure Bintang(k:char; i:integer);
begin
  write(k);
end;
var i: integer;
    c: char;
begin
  write(' Karakter: ');
  readln(c);
  for i:=1 to 9 do
    bintang(c,3);
  writeln;
  bintang(c,4);
  write(' Judul ');
  bintang(c,5);
  writeln;
  for i:=1 to 9 do
    bintang(c,6);
  readln;
end.
