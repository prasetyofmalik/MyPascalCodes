program repeat_until;

var
    i: integer;

begin
//Dilakukan penambahan sebanyak 1 kali terhadap counter pada tiap perulangan. 
    write('increment: ');
    i:=1;
    repeat
        write(i:2);
        i:=i+1;
    until (i>5);
    writeln;

//Dilakukan pengurangan sebanyak 1 kali terhadap counter pada tiap perulangan.
    write('decrement: ');
    i:=5;
    repeat
        write(i:2);
        i:=i-1;
    until (i<1);
    writeln;
    
    readln;
end.