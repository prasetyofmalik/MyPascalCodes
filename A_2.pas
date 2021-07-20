program a_kuponberhadiah;

var
    n,i:integer;
    x,input,output,jarak_a,jarak_b:longint;

function jarak(a:longint):longint;
begin
    jarak:=abs(input-x); 
end;

begin
    read(n,x);
    read(input);
    output:=input;
    for i:= 2 to n do begin
        read(input);
        jarak_a:=jarak(input);
        jarak_b:=jarak(output);
        if (jarak_a < jarak_b) or ((jarak_a = jarak_b) and (input < output)) then output:=input;
    end;
    writeln(output);
end.