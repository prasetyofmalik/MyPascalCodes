Program HitungAkar2;
uses crt;
const Error=0.00000001;
      IterasiMax=10000;

    function Akar2(n:real):real;
    var l,m,h,e:real;
        i:integer;
    begin
        l:=0;h:=n+1;i:=1;e:=n;
        while (i<=IterasiMax) and (sqr(e)>sqr(Error)) do
        begin
            m:=(l+h)/2;
            e:=sqr(m)-n;
            if e<0 then l:=m
            else if e>0 then h:=m;
            i:=i+1;
        end;
        if i>IterasiMax then akar2:=-1
        else Akar2:=m;
    end;

var
    n: real;

begin
    clrscr;
    writeln('Program akar kuadrat');
    write('Masukkan bilangan: ');readln(n);
    writeln('akar kuadrat dari ',n:0:2,' = ',Akar2(n):0:9);
    readln;
end.
