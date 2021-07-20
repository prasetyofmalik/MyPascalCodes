program for_do;
var
    i: integer;
begin
//Dilakukan penambahan sebanyak 1 kali terhadap counter pada tiap perulangan. 
    write('increment: ');
    for i:=1 to 5 do
        write(i:2);
    
    writeln;

//Dilakukan pengurangan sebanyak 1 kali terhadap counter pada tiap perulangan.
    write('decrement: ');
    for i:=5 downto 1 do
        write(i:2);
    
    writeln;
    readln;
end.