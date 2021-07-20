program a_kuponberhadiah;
var
    n,x,k,selisih,angka,i:longint;
    
begin
    read(n,x);
    read(k);
    selisih:=abs(x-k); angka:=k;
    for i:=1 to n-1 do
    begin
        read(k);
        if (abs(x-k)<selisih) then
        begin
            selisih:=abs(x-k);
            angka:=k;
        end;
        if (abs(x-k)=selisih) then
            if (k<angka) then angka:=k;
    end;
    writeln(angka);
end.