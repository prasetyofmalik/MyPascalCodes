program berat_badan;
    uses crt;
  var
    usia,berat : integer;
    tinggi,BMI : real;

begin
  clrscr;
  write('Masukkan usia Anda: ');readln(usia);
  if (usia >=0) and (usia <=99) then
   begin
     write('Masukkan berat badan Anda (kilogram): ');readln(berat);
     write('Masukkan tinggi badan Anda (meter): ');readln(tinggi);
     BMI := berat / sqr(tinggi);
     writeln('BMI Anda adalah : ',BMI:2:2);
	if BMI < 18 then
		writeln('Anda terlalu kurus')
	else if (BMI>= 18) and (BMI <= 25) then
		writeln('Berat badan Anda normal')
	else
		writeln('Anda terlalu gemuk');
   end
  else
    writeln('Innalillahi');
  readln;
end.
