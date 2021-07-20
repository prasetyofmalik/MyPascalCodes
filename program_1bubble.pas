Program BubbleSort;
uses crt;
type larik=array[1..20]of integer;

procedure tukar(var a,b:integer);
var c:integer;
begin
    c:=a;a:=b;b:=c;
end;

procedure Bubble1(var data:larik;n:integer);
var i,j:integer;
begin
    for i:=1 to n-1 do
        for j:=1 to n-i do
            if (data[n-j+1]<data[n-j]) then
                tukar(data[n-j+1],data[n-j])
end;

procedure Bubble2(var data:larik;n:integer);
var i,j:integer;
begin
    for i:=1 to n-1 do
        for j:=1 to n-i do
            if (data[n-j+1]>data[n-j]) then
                tukar(data[n-j+1],data[n-j])
end;

var a:larik;
    i,n:integer;

begin
    clrscr;
    writeln('Program Pengurutan Data Bubble Sort');
    writeln;
    n:=5; a[1]:=21; a[2]:=17; a[3]:=8; a[4]:=26; a[5]:=14;
    writeln('Data sebelum diurutkan:');
    for i:=1 to n do
        write(a[i]:4);
    writeln;

    Bubble1(a,n);
    writeln('Data setelah diurutkan (ascending):');
    for i:=1 to n do
        write(a[i]:4);
    writeln;

    Bubble2(a,n);
    writeln('Data setelah diurutkan (descending):');
    for i:=1 to n do
        write(a[i]:4);
    writeln;
    readln;
end.
