program enumerasi2;
uses crt;
type
  Day = (Mon,Tue,Wed,Thu,Fri,Sat,Sun);
var
  a,tmr,ytd:Day;
begin
  clrscr;
    write('Input Day: ');readln(a);
    if a=sun then tmr:=mon
    else tmr:=succ(a);
    if a=mon then ytd:=sun
    else ytd:=pred(a);
    writeln('Tomorrow is ',tmr);
    write('Yesterday is ',ytd);
  readln;
end.


