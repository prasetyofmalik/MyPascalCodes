program fortokopi;

var
  i,jml: integer;
begin

  writeln('TABEL HARGA FOTOKOPI');
  writeln('|---------|---------|');
  writeln('|LEMBAR   |HARGA    |');
  writeln('|---------|---------|');
  for i:=1 to 100 do
  begin
  writeln('|',i:9,'|',i*125:9,'|');
  end;
  writeln('|---------|---------|');
  readln;
end.
