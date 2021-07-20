Program SelectionSort;
uses crt;
type larik=array[1..20]of integer;

    function CariIdxMin1(data:larik;awal,n:integer):integer;
    var hasil,i:integer;
    begin
        hasil:=awal;
        for i:=awal+1 to n do
            if data[hasil]>data[i] then hasil:=i;
        CariIdxMin1:=hasil;
    end;

    function CariIdxMin2(data:larik;awal,n:integer):integer;
    var hasil,i:integer;
    begin
        hasil:=awal;
        for i:=awal+1 to n do
            if data[hasil]<data[i] then hasil:=i;
        CariIdxMin2:=hasil;
    end;

    procedure tukar(var a,b:integer);
    var c:integer;
    begin
        c:=a;a:=b;b:=c;
    end;

    procedure Selection1(var data:larik;n:integer);
    var i,j,IdxMin:integer;
    begin
        for i:=1 to n-1 do
        begin
            IdxMin:=CariIdxMin1(data,i,n);
            tukar(data[i],data[IdxMin]);
        end;
    end;

    procedure Selection2(var data:larik;n:integer);
    var i,j,IdxMin:integer;
    begin
        for i:=1 to n-1 do
        begin
            IdxMin:=CariIdxMin2(data,i,n);
            tukar(data[i],data[IdxMin]);
        end;
    end;

var a:larik;
    i,n:integer;

begin
    clrscr;
    writeln('Program Pengurutan Data Selection Sort');
    writeln;
    n:=5; a[1]:=21; a[2]:=17; a[3]:=8; a[4]:=26; a[5]:=14;
    writeln('Data sebelum diurutkan:');
    for i:=1 to n do
        write(a[i]:4);
    writeln;

    Selection1(a,n);
    writeln('Data setelah diurutkan (ascending):');
    for i:=1 to n do
        write(a[i]:4);
    writeln;

    Selection2(a,n);
    writeln('Data setelah diurutkan (descending):');
    for i:=1 to n do
        write(a[i]:4);
    writeln;
    readln;
end.