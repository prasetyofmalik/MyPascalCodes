program InputData;
uses crt;
var data,i,n,tot:integer;
    rerata: real;
begin
    clrscr;
    Writeln(' Input Data Anda');
    n:=10;
    for i:=1 to n do
    begin
    write(' Data ke-',i:2,': ');
        readln(data);
        tot:=tot+data;
    end;
        rerata:=tot/n;
        writeln(' Total=     ', tot);
        writeln(' Rata-rata= ',rerata:0:2);
    readln;
end.
