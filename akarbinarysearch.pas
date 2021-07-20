Program HitungAkar2;
uses crt;
const Error=0.00000001;//10^-8
      IterasiMax=10000;//10^4

function Akar2(n:real):real;
var
    l,m,h,e:real;
    i:integer;
begin
    l:=0;h:=n+1;i:=1;e:=n;
    while (i<=IterasiMax) and (sqr(e)>sqr(Error)) do
    begin
        m:=(l+h)/2;
        e:=m*m-n;
        if e<0 then l:=m
        else if e>0 then h:=m;
        i:=i+1;
    end;
    if i>IterasiMax then akar2:=-1
    else Akar2:=m;
end;

function Akar3(n:real):real;
var
    l,m,h,e:real;
    i:integer;
begin
    l:=0;h:=n+1;i:=1;e:=n;
    while (i<=IterasiMax) and (sqr(e)>sqr(Error)) do
    begin
        m:=(l+h)/2;
        e:=m*m*m-n;
        if e<0 then l:=m
        else if e>0 then h:=m;
        i:=i+1;
    end;
    if i>IterasiMax then akar3:=-1
    else Akar3:=m;
end;

var
    pilih:integer;
    n:real;

begin
    clrscr;
    writeln('Program Akar Pangkat');
    writeln('1. Program akar pangkat dua');
    writeln('2. Program akar pangkat tiga');
    write('Pilih program: ');readln(pilih);
    write('Masukkan bilangan = ');readln(n);
    case pilih of
        1:writeln('akar pangkat dua dari ',n:0:3,' = ',Akar2(n):0:8);
        2:writeln('akar pangkat tiga dari ',n:0:3,' = ',Akar3(n):0:9);
    end;
    readln;
end.
