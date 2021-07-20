Program modifikasi7_4;
uses crt;
var
  a,b,i,j,m,k:integer;
  kar:char;
function isi(a:integer):integer;
begin
  for j := i-1 downto 1 do
    write(' ':2);
  for k := m-(i-1) downto 1 do
  begin
    if (i=1)or(i=m)or(k=(m-(i-1)))or(j=k) then
    write(kar:2)
    else write(' ':2);
  end;
end;
procedure segitiga(b:integer);
begin
  for i := m downto 1 do
  begin isi(a); writeln;
  end; readln;
end;
begin
  clrscr;
  Write('Karakter yang digunakan: ');
  readln(kar);
  writeln('Ukuran segitiga yang diinginkan');
  write('Alas= ');readln(m);
  segitiga(b);
end.
