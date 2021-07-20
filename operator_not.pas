program operator_not_xor;
uses crt;
var
    A : boolean;
  begin
    clrscr;
    A := false;
    A := not A;
    writeln(A);
    writeln('T xor T =', true xor true);
    writeln('T xor F =', true xor false);
    writeln('F xor T =', false xor true);
    writeln('F xor F =', false xor false);
    readln;
  end.
