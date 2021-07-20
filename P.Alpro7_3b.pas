Program Contoh74;
uses crt;
var
  i,j,m,k:integer;
  kar:char;
begin
  clrscr;
  Write('Karakter yang digunakan: ');
  readln(kar);
  write('Alas= ');readln(m);
  for i := m downto 1 do
  begin
    for j := i-1 downto 1 do
      write(' ':2);
      for k := m-(i-1) downto 1 do
      begin
        if (i=1)or(i=m)or(k=(m-(i-1)))or(j=k) then
 	write(kar:2)
 	else write(' ':2);
      end;
  writeln;
  end;
  readln;
end.
