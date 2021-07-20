program InputData;
uses crt;
var data,i,n,tot:integer;
    rerata: real;
begin
    clrscr;
    write('Jumlah data = ');readln(n);
    Writeln(' Input Data Anda');
    i:=1;
    repeat
        write(' Data ke-',i:2,': ');
        readln(data);
        tot:=tot+data;
        i:=i+1;
    until i>n;

        rerata:=tot/n;
        writeln(' Total=     ', tot);
        writeln(' Rata-rata= ',rerata:0:2);
    readln;
end.
