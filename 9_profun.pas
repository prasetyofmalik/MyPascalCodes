program hitung_faktorial;
var 
     n,m,pro1,pro2,pro3,fun3:integer;
Procedure Fpro1;
var i:integer;
begin
     pro1:=1;
     for i:=2 to n do
         pro1:=pro1*i;
end;
Function Ffun1:integer;
var i,f:integer;
begin
     f:=1;
     for i:=2 to n do
         f:=f*i;
     ffun1:=f;
end;
Procedure Fpro2(a:integer);
var i:integer;
begin
     pro2:=1;
     for i:=2 to a do
         pro2:=pro2*i;
end;
Function Ffun2(a:integer):integer;
var i,f:integer;
begin
     f:=1;
     for i:=2 to a do
         f:=f*i;
     ffun2:=f;
end;
Function Ffun3(a:integer):integer;
var i,f:integer;
begin
     f:=1;
     for i:=2 to a do
         f:=f*i;
     fun3:=f;
end;
Procedure Fpro3(a:integer;var hasil:integer);
var i:integer;
begin
     hasil:=1;
     for i:=2 to a do
         hasil:=hasil*i;
end;

begin
     write('n=');readln(n);
     Fpro1;writeln(n,'!=',pro1);
     Fpro2(n+2);writeln(n+2,'!=',pro2);
     Fpro3(n+1,pro3);writeln(n+1,'!=',pro3);
     writeln(n,'!=',Ffun1);
     writeln(n+2,'!=',Ffun2(n+2));
     Ffun3(n+2);
     writeln(n+2,'!=',ffun3(n+2));
     writeln(n+2,'!=',fun3);
end.