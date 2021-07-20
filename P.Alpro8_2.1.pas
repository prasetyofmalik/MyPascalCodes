program modifikasi7_1;
uses crt;
var
  i,j,n,x:integer;
procedure c;
begin
  if (i mod 2 = 1) then x:=x+1
  else if (i mod 2 = 0) then x:=x-1;
end;
function baris:integer;
begin
  for j:=1 to 10 do
  begin write(x:2);c; end;
  writeln;
end;
procedure cetak(m:integer);
begin
  for i:=1 to m do
  begin
    if (i mod 2 = 1) then
    begin x:=0; baris; end
    else if (i mod 2 = 0) then
    begin x:=9; baris; end;
    writeln;
  end;
  readln;
end;
begin
  clrscr;
    writeln('Program cetak angka');
    write('jumlah baris: '); readln(n);
    cetak(n);
end.