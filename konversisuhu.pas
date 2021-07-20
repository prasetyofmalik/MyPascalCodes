program konversi_suhu;
uses crt;

var
 C,F : real;

begin
 writeln('MENCARI KONVERSI SUHU');
 Writeln('=====================');
 write('Input derajat Celcius = '); readln(C);
 F := 9 / 5 * C + 32;
 writeln('Derajat Fahrenheit = ', F:1:1);
 readln;
end.