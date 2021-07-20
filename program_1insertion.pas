Program InsertionSort;
uses crt;
type larik=array[1..20]of integer;

    procedure Insertion1(var data:larik;n:integer);
    var i,j,key:integer;
    begin
        for i:=2 to n do
        begin
            key:=data[i];
            j:=i-1;
            while (j>0) and (data[j]>key) do
            begin
                data[j+1]:=data[j];
                j:=j-1;
            end;
            data[j+1]:=key;
        end;
    end;

    procedure Insertion2(var data:larik;n:integer);
    var i,j,key:integer;
    begin
        for i:=2 to n do
        begin
            key:=data[i];
            j:=i-1;
            while (j>0) and (data[j]<key) do
            begin
                data[j+1]:=data[j];
                j:=j-1;
            end;
            data[j+1]:=key;
        end;
    end;

var a:larik;
    i,n:integer;

begin
    clrscr;
    writeln('Program Pengurutan Data Insertion Sort');
    writeln;
    n:=5; a[1]:=21; a[2]:=17; a[3]:=8; a[4]:=26; a[5]:=14;
    writeln('Data sebelum diurutkan:');
    for i:=1 to n do
        write(a[i]:4);
    writeln;

    Insertion1(a,n);
    writeln('Data sesudah diurutkan (ascending):');
    for i:=1 to n do
        write(a[i]:4);
    writeln;

    Insertion2(a,n);
    writeln('Data sesudah diurutkan (descending):');
    for i:=1 to n do
        write(a[i]:4);
    writeln;
    readln;
end.
