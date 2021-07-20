program InputData;
uses crt;
var data,i,n,tot:integer;
    rerata: real;
begin
    clrscr;

    Writeln(' Input Data Anda');
    i:=1;
    while data>=0 do
    begin
        write(' Data ke-',i:2,': ');
        readln(data);
        tot:=tot+data;
        i:=i+1;
    end;
        tot:=tot-data;
        rerata:=tot/(i-2);
        writeln(' Total=     ', tot);
        writeln(' Rata-rata= ',rerata:0:2);
    readln;
end.
