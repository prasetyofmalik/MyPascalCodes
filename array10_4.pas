program array2;
uses crt;

var
        a,b,c:array[1..3,1..3] of integer;
        i,j:integer;

begin

        clrscr;
        writeln('Buat matriks A');
        for i:=1 to 3 do
        begin
                for j:=1 to 3 do
                begin
                write('[',i,',',j,'] = ');
                readln(a[i,j]);
                end;
        end;

        writeln('Buat matriks B');
        for i:=1 to 3 do
        begin
                for j:=1 to 3 do
                begin
                write('[',i,',',j,'] = ');
                readln(b[i,j]);
                end;
        end;

        writeln('matriks A');
        for i:=1 to 3 do
        begin
                for j:=1 to 3 do
                write(a[i,j],' ');
                writeln;
        end;

        writeln('matriks A');
        for i:=1 to 3 do
        begin
                for j:=1 to 3 do
                write(b[i,j],' ');
                writeln;
        end;

        writeln('matriks C = matriks A + matriks B');
        for i:=1 to 3 do
        begin
                for j:=1 to 3 do
                begin
                c[i,j]:=a[i,j]+b[i,j];
                write(c[i,j],' ');
                end;
                writeln;
        end;
readln;
end.