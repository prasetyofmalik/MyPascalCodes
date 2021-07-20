Program Permutasi1;

var i,n,r : integer;
    permu : integer;
    
begin
    writeln(' Hitung Permutasi P(n,r)');
    write(' n= ');
    readln(n);
    write(' r= ');
    readln(r);
    
    Permu:=1;
    i:=1;
    while (i<=r) do
    begin
        Permu:=Permu*(n-i+1);
        i:=i+1;
    end;
    
    writeln('P(',n,',',r,')= ',Permu);
end.