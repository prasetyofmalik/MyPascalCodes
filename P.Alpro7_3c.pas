program Contoh74;
uses crt;
var
  i,j,m:integer;
  kar:char;
begin
  write('Karakter yang digunakan : ');readln(kar);
  write('tinggi = ');readln(m);
  for i := 1 to m do
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
  readln;
end.

