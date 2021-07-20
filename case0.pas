{ 1}Program Contoh51;
uses crt;
{ 2}var  Nilai : integer;
{ 3}     grade : char;
{ 4}begin
clrscr;
{ 5}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
{ 6}   write('Nilai Anda = ');
{ 7}   readln(Nilai);
{ 9}   case Nilai of
{10}      0..59:  grade:='D';
{11}     60..69:  grade:='C';
{12}     70..79:  grade:='B';
{13}     80..100: grade:='A';
{14}    end;

{ 9}   writeln('Grade Anda ', grade );
{17}   if (grade = 'D') then
{18}    writeln('Kurang memuaskan')
{19}    else if(grade = 'C') then
        writeln('Cukup')
{20}    else if(grade = 'B') then
        writeln('Baik')
{21}    else if(grade = 'A') then
        writeln('Sangat Baik')
        else;
{22}
{23}   readln
{24}end.
