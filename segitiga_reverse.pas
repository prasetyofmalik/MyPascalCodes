var
    i, j, n: integer;

begin
    write('Masukkan nilai n: ');
    readln(n);

    for i:=1 to n do
        begin
            for j:=1 to 2*n+5 do
            begin
                if (j<=i) or (j>2*n+5-i) then
                begin
                    write(i);
                end 
                else
                begin
                    write(' ');
                end;
            end;
            writeln;
        end;
end.