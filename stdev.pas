Program standar_deviasi;
uses crt;
var
        x1,x2,x3,x4,sumx,n           : integer;
        rerata,e1,e2,e3,e4,sume2,sd  : real;
begin
        clrscr;
        writeln('MENCARI STANDAR DEVIASI (SD)');
        writeln('=============================');
        write('Data ke 1 = ');readln(x1);
        write('Data ke 2 = ');readln(x2);
        write('Data ke 3 = ');readln(x3);
        write('Data ke 4 = ');readln(x4);
        n := 4;
        sumx := x1+x2+x3+x4;
        writeln('Total = ',sumx);
        rerata  := sumx/n; writeln('Rata-rata = ',rerata:0:2);
        e1 := sqr(x1-rerata);
        e2 := sqr(x2-rerata);
        e3 := sqr(x3-rerata);
        e4 := sqr(x4-rerata);
        sume2 := e1+e2+e3+e4;
        sd:=sqrt(sume2/(n-1));
        writeln('Jumlah Data (n) = ', n);
        writeln('Standar Deviasi (sd) =', sd:0:2);
        readln;
end.