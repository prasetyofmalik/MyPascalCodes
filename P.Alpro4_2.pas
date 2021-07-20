program pengukuran_suhu;
uses crt;
var
   suhu : integer;
   kondisi:string;
   beku,cair,uap : string;
begin
   clrscr;
   writeln('Pengukuran Suhu Air pada Derajat Celcius');
   write('Masukkan suhu air = ');readln(suhu);

   1: suhu<=0;
   2: (suhu>0) and (suhu<100);
   3: suhu>=100;

   write('Kondisi air = ',kondisi);
   case kondisi of
   1: writeln('beku');
   2: writeln('cair');
   'uap' : writeln('uap');
   end;
   readln;
end.
