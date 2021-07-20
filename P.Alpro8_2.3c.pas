program modifikasi7_4;
uses crt;
var
  b,i,j,m:integer;
  kar:char;
function isi:integer;
begin
  for j := i to m do
    write(' ':2);
  for j := 1 to (2*i-1) do
  begin
    if (i=m) or (j=1) or (j=2*i-1) then
      write(kar:2)
    else write(' ':2);
  end;
  writeln;
end;
procedure segitiga(b:integer);
begin
  for i := 1 to m do isi;
  readln;
end;
begin
  clrscr;
  Write('Karakter yang digunakan: ');
  readln(kar);
  write('tinggi = ');readln(m);
  segitiga(b);
end.