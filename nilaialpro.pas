Program Konversi;
uses crt;
var tugas,uts,uas: integer;
    NA :           integer;
    grade :        string;

label 1,2,3;

begin
clrscr;
    writeln(' Input Nilai Algoritma dan Pemrograman Anda');
1:  write('Tugas: ');readln(tugas);
    if (tugas<0) or (tugas>100) then
    begin
    writeln('input salah'); goto 1;
    end
    else
2:  write('UTS:   ');readln(uts);
    if (uts<0)   or (uts>100)   then
    begin
    writeln('input salah'); goto 2;
    end
    else
3:  write('UAS:   ');readln(uas);
    if (uas<0)   or (uas>100)   then
    begin
    writeln('input salah'); goto 3;
    end
    else

    NA:=(tugas*2+uts*3+uas*5)div 10;

    {if NA<20 then grade:='E'
    else if NA<40 then grade:='D'
    else if NA<60 then grade:='C'
    else if NA<80 then grade:='B'
    else grade:='A';}

    case NA of
     0..19 : grade:= 'E';
    20..39 : grade:= 'D';
    40..59 : grade:= 'C';
    60..79 : grade:= 'B';
    80..100: grade:= 'A';
    end;

    writeln(' Nilai Akhir= ',NA);
    writeln(' Grade=       ',grade);
    readln;
end.

