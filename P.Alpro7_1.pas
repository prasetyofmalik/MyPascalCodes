program palpro7_1;
uses crt;
var
  i,j,n,x:integer;
begin
  clrscr;
    writeln('Random number generator');
    write('jumlah baris: '); readln(n);
  for i:=1 to n do
  begin
    if (i mod 2 = 1) then
    begin
      x:=0;
      for j:=1 to 10 do
      begin
        write(x:2);
        x:=x+1;
      end;
      writeln;
    end
    else if (i mod 2 = 0) then
    begin
      x:=9;
      for j:=1 to 10 do
      begin
        write(x:2);
        x:=x-1;
      end;
      writeln;
    end;
    writeln;
  end;
  readln;
end.
