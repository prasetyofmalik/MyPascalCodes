program InputData;
uses crt;
var data,i,n,tot:integer;
    rerata: real;
begin
    clrscr;
    Writeln(' Input Data Anda');

    for i:=1 to 100 do
    begin
    write(' Data ke-',i:2,': ');
        readln(data);
        if data<0 then break;
        tot:=tot+data;
    end;
        rerata:=tot/(i-1);
        writeln(' Total=     ', tot);
        writeln(' Rata-rata= ',rerata:0:2);
    readln;
end.
