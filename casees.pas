{ 1}Program Contoh53;
uses crt;
{ 2}var
{ 3}   Nilai : integer;
{ 4}
{ 5}begin
clrscr;
{ 6}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
{ 7}   write('Nilai Anda = ');
{ 8}   readln(Nilai);
{ 9} if (Nilai<0) or (Nilai>100) then
		begin
		writeln('Anda salah input nilai');
		readln;
		exit;
		end;

{10}   case nilai of
{11}     0..59 : writeln('Anda tidak lulus');
{16}     60..74: writeln('Anda lulus dengan nilai cukup');
{17}     75..89: writeln('Anda lulus dengan nilai baik');
{18}     90..100:writeln('Anda lulus dengan nilai sangat baik');
{21}     else writeln(' Anda salah input nilai');
{22}   end;
{23}
{24}   readln;
{25}end.