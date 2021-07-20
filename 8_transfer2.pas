// Transfer by reference
Program Transfer1;
  Procedure tukar(var x,y:real);
  Var z: real;
  Begin
    z:=x; x:=y; y:=z;
  End;
Var a,b:integer;
Begin
  a:=2; b:=9;
  tukar(a,b);
  writeln('a= ',a,' b:= ',b);
  readln;
End.
