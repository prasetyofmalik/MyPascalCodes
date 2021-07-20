Program combinasi1;

var i,n,r : integer;
    combi : real;
    
begin
    writeln(' Hitung Kombinasi C(n,r)');
    write(' n= ');
    readln(n);
    write(' r= ');
    readln(r);
    
    combi:=1;
    i:=1;
    while (i<=r) do
    begin
        combi:=combi*(n-i+1)/i;
        i:=i+1;
    end;
    
    writeln('C(',n,',',r,')= ',combi:0:0);
end.