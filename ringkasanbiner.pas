Program susunan_angka_biner;
uses crt;
var i,j,k : integer;
    angka : string[32];

begin
  clrscr;
  writeln('Program meringkas angka biner');
  write('Masukkan Angka maksimal 31 digit: '); readln(angka);
  for i :=1 to length(angka) do
  begin
    if (angka[i]) ='0' then
    begin ;
      k:=0 ;
      j:=j+1;
      if (angka[i+1]) = (angka[i]) then continue
      else write('0:',j,'  ');
    end;
    if (angka[i]) ='1' then
    begin ;
      j:=0;
      k:=k+1;
      if (angka[i+1]) = (angka[i]) then continue
      else write('1:',k,'  ');
    end;
  end;
readln;
end.