program Contoh74;
uses crt;
var
  i,j,n,m:integer;
  kar:char;
begin
  clrscr;
    write('Masukkan karakter: ');readln(kar);
    write('jumlah baris: '); readln(m);
    write('jumlah kolom: '); readln(n);
  for i:=1 to n do
  begin
    for j:=1 to m do
      if (i=1)or(i=n)or(j=1)or(j=m) then
        write(kar:3)
      else write(' ':3);
      writeln;
  end;
  readln;
end.
