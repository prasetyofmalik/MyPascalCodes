program psalca;
uses crt;
var
  i,j,baris,n,r,a:integer;
  nfak,rfak,nrfak: longint;
  combi:real;

begin
  clrscr;
  writeln('Menampilkan Segitiga Pascal');
  write('Jumlah baris: ');readln(baris);

  n:=0;
  for i:=1 to baris do
  begin
    r:=0;
    for j:=1 to baris do
      if (j<baris-i+1) then write(' ':3)
      else
      begin
        nfak:=1;
          if (n=0)and(n=1) then nfak:=1
          else if n > 1 then
          begin
            for a:=2 to n do
              nfak:=nfak*a;
          end;
        rfak:=1;
          if (r=0)and(r=1) then rfak:=1
          else if r > 1 then
          begin
            for a:=2 to r do
              rfak:=rfak*a;
          end;
        nrfak:=1;
          if n=r then nrfak:=1
          else if n > r then
          begin
            for a:=2 to (n-r) do
              nrfak:=nrfak*a;
            end;
        combi:= nfak div (rfak*nrfak);
        write(combi:3:0);
        write(' ':3);
        r:=r+1;
      end;
    writeln;
    n:=n+1;
  end;
  readln;
end.