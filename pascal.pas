program pascal;
uses crt;
var
  row, coulumn, i, j : integer;

begin
  clrscr;
  row     := 7;
  coulumn := 8;
  j       := 1;

  for i := 1 to row do
  begin
    for coulumn := 1 to coulumn - 1 do write (' ');
    for j := 1 to row - coulumn do write ('1 ');
    writeln;
  end;
  readln;
end.