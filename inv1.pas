Program Matrik_Invers;
uses crt;
type data = array [1..10,1..10] of real;
var
matrikI,matrikII : data;
baris,kolom, pil : integer;
tambah:char;

procedure isi;

var  i,j : integer;

begin

writeln('Tentukan Ordo Matrik I');

write('Masukan banyak baris matrik I = ');readln(baris);

write('Masukan banyak kolom matrik I = ');readln(kolom);

for i:=1 to baris do

for j:=1 to kolom do

begin

gotoxy(j*5,i+5);

readln(matrikI[i,j]);

end;

writeln('Tentukan Ordo Matrik II');

write('Masukan banyak baris matrik II = ');readln(baris);

write('Masukan banyak kolom matrik II = ');readln(kolom);

for i:=1 to baris do

for j:=1 to kolom do

begin

gotoxy(j*5,i+12);

readln(matrikII[i,j]);

end;

end;

procedure invers_matrik(m1:data);

var

i,j,l,k : integer;

begin

{Matrik SISI KANAN}

for j:=baris+1 to baris+baris do

begin

i:=j-baris;

m1[i,j]:=1;

end;

for j:=baris+1 to baris+baris do

begin

for i:=1 to baris do

if i<>j-baris then m1[i,j]:=0;

end;

{PROSES INVERS}

for i:=1 to baris do

begin

for j:=1 to baris+baris do

begin

if i<>j then m1[i,j]:=m1[i,j]/m1[i,i];

end;

for j:=1 to baris+baris do

begin

if i=j then m1[i,j]:=1;

end;

{PENJUMLAHAN KESATU BARIS ELEMENT}

for l:=1 to baris do

begin

if i<>l then

begin

for j:=i+1 to baris+baris do

begin

m1[l,j]:=m1[l,j]-(m1[i,j]*m1[l,i]);

end;

end;

end;

{PEMBUATAN NOL DISEKITAR MATRIKS KIRI}

for k:=1 to baris do

begin

if i<>k then

begin

m1[k,i]:=0;

end;

end;

end;

{MEMUNCULKAN INVERS}

writeln('Maka invers dari matrik adalah :');

for i:=1 to baris do

begin

for j:=baris+1 to baris+baris do

write ('    ',m1[i,j]:0:2);

writeln;

end;
readln;
end;

begin
clrscr;
isi;

Invers_matrik (matrikI);
readln;
end.
