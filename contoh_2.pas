program while_do;

var
    i: integer;

begin
//Dilakukan penambahan sebanyak 1 kali terhadap counter pada tiap perulangan. 
    write('increment: ');
    i:=1;
    while (i<=5) do
    begin
        write(i:2);
        i:=i+1;
    end;
    writeln;

//Dilakukan pengurangan sebanyak 1 kali terhadap counter pada tiap perulangan.
    write('decrement: ');
    i:=5;
    while (i>=1) do
    begin
        write(i:2);
        i:=i-1;
    end;
    writeln;
    
    readln;
end.