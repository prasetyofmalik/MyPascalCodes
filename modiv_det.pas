program determinan;
uses crt;
var
    a: array[1..50,1..50] of real;
    i,j,k,l,m,n:integer;
    r,d:real;
begin
    clrscr;
    write('Jumlah baris/kolom matriks: ');readln(n);
    writeln('Matriks ordo ',n,'*',n);
    writeln;

    for i:=1 to n do
    begin
       for j:=1 to n do
       begin
         write('Nilai [',i,',',j,'] = ');readln(a[i,j]);
       end;
       writeln;
    end;
    for i:=1 to n do
    begin
       for j:=1 to n do
          write(a[i,j]:5:0);writeln;
    end;

    if n=2 then
    begin
       d:=a[1,1]*a[2,2]-a[1,2]*a[2,1];
       writeln('Determinan matriks: ',d:0:0);
    end
    else if n>2 then
    begin
       d:=0;
       for i:=1 to n do
          for j:=1 to n-1 do
             if a[i,j]=a[i,1] then d:=d+0
             else d:=d+1;

       if d=0 then writeln('Determinan matriks: ',d:0:0)
       else if d>=1 then
       begin
          d:=1;
          for k:=1 to n do
          begin
             for l:=1 to n do
             begin
                if l>k then
                begin
                   r:=a[l,k]/a[k,k];
                   for m:=1 to n do
                      a[l,m]:=a[l,m]-(r*a[k,m]);
                end;
             end;
          end;

          for k:=1 to n do
             d:=d*a[k,k];
          writeln('Determinan matriks: ',d:0:0);
       end;
    end;
    readln;
end.