program kotakbilangan;
uses crt;
var
  i,j,baris:integer;
  c:char;

begin
  clrscr;
  write('Karakter: ');readln(c);
  write('Jumlah baris: ');readln(baris);

  for i:=1 to baris do
  begin
    for j:=1 to baris do
      if (j<baris-i+1) then write(' ':3)
      else
      begin
        write(c:3);
        write(' ':3);
      end;
    writeln;
  end;
  readln;
end.
