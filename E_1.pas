program e_pertemuanpakdengklek;

var i,j,n: integer;
    listnama : array[1..10] of string;

procedure sort(n:integer);
var 
    temp:string;
begin
    for i:=1 to n-1 do
        for j:= n downto i+1 do
            if (length(listnama[j])<length(listnama[j-1])) then
            begin
                temp := listnama[j];
                listnama[j]:=listnama[j-1];
                listnama[j-1]:=temp;
            end;
end;

procedure sortabjad(n:integer);
var 
    temp:string;
begin
    sort(n);
    for i:=1 to n-1 do
        for j:= n downto i+1 do
            if (length(listnama[j])=length(listnama[j-1])) then
                if (listnama[j]<listnama[j-1]) then
                begin
                    temp := listnama[j];
                    listnama[j]:=listnama[j-1];
                    listnama[j-1]:=temp;
                end;
end;

begin
    readln(n);
    for i:=1 to n do 
        readln(listnama[i]);
    writeln;
    sortabjad(n);
    for i:=1 to n do 
        writeln(listnama[i]);
end.