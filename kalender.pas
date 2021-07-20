Program KalendarAbadi;

Uses crt;

Const Januari = 31;
Februari = 28;
Maret = 31;
April = 30;
Mei = 31;
Juni = 30;
Juli = 31;
Agustus = 31;
September = 30;
Oktober = 31;
Nopember = 30;
Desember = 31;
kabisat = 366 MOD 7;
Normal = 365 MOD 7;

Type Blntype = Record
jumlah : Byte;
NamaBln : String;
End;

Var DataBln : Array[1..12] Of Blntype;
HariPertama, TotalHari,
NumDays : Word;
s:string;

Var Bln,Thn:word;

Procedure GetDataBln;
Begin
DataBln[1].jumlah:=31;
DataBln[1].NamaBln:='Januari';
DataBln[2].jumlah:=28;
DataBln[2].NamaBln:='Februari';
DataBln[3].jumlah:=31;
DataBln[3].NamaBln:='Maret';
DataBln[4].jumlah:=30;
DataBln[4].NamaBln:='April';
DataBln[5].jumlah:=31;
DataBln[5].NamaBln:='Mei';
DataBln[6].jumlah:=30;
DataBln[6].NamaBln:='Juni';
DataBln[7].jumlah:=31;
DataBln[7].NamaBln:='Juli';
DataBln[8].jumlah:=31;
DataBln[8].NamaBln:='Agustus';
DataBln[9].jumlah:=30;
DataBln[9].NamaBln:='September';
DataBln[10].jumlah:=31;
DataBln[10].NamaBln:='Oktober';
DataBln[11].jumlah:=30;
DataBln[11].NamaBln:='Nopember';
DataBln[12].jumlah:=31;
DataBln[12].NamaBln:='Desember';
End;

Function ThnKabisat(n:Word):Boolean;
Begin
If (N MOD 4 = 0) AND (N MOD 100 <> 0) OR (N MOD 400 = 0) Then
ThnKabisat:=True
Else ThnKabisat:=False;
End;

Function GetInput (Prompt:String; min,max:Word):Word;
Var Value:Word;
Begin
Repeat
GotoXY(1,1);
Write(Prompt);
Read(value)
Until (Value>=min) And (value<=max);
GetInput := Value
END;

{penetapan hari pertama dan total hari pada suatu bulan}
Procedure perhitungan(Thn, Bln:word);
Var i : Word;
Begin
{penghitungan total hari mulai dari 1/1/1}{
mulai dengan tahun keseluruhan}
NumDays := 1;
For I := 1 To Thn - 1 Do
Begin
If ThnKabisat(I) Then {jika tahun kabisat, tambahkan}
Inc(NumDays, kabisat) {366 MOD 7.}
Else {jika tahun normal, tambahkan}
Inc(NumDays, Normal); {365 MOD 7.}
End;

{tambahkan dalam hari dari seluruh bulan}
For I := 1 To Bln - 1 Do
Inc(NumDays, DataBln[I].jumlah);

{atur nomor hari dalam bulan yang diminta}
TotalHari := DataBln[Bln].jumlah;

If ThnKabisat(Thn) Then
Begin
{jika setelah februari, tambahkan 1 ke total hari}
IF Bln > 2 Then Inc(NumDays)
{jika februari, tambahkan 1 ke hari bulan}
Else If Bln = 2 Then
Inc(TotalHari, 1);
End;

HariPertama := NumDays Mod 7
End;

Procedure KalenderKeluaran(Thn, Bln:word);
Var
I : Byte;
tanya : char;

Begin
perhitungan(Thn, Bln);
ClrScr;
gotoxy(6,1);WriteLn('Bulan ',DataBln[Bln].NamaBln,' Tahun ',Thn);
WriteLn('-----------');
WriteLn('Ming Sen Sel Rab Kam Jum Sab ');
WriteLn('-----------');

GotoXY(5*HariPertama+1,5);

For I := 1 To TotalHari Do
Begin
If i<10 Then Write(' ',I,' ');
If i>9 Then Write(I,' ');

IF WhereX > 32 THEN WriteLn;
End;
End;

label kembali;
Begin
repeat
kembali:
GetDataBln;
ClrScr;
Bln:=Getinput(' Masukkan Bulan :',1,12);
ClrScr;
Thn:=Getinput(' Masukkan Tahun Kalender :',1,9999);
KalenderKeluaran(Thn,Bln);
gotoxy(1,11);
writeln('-----------');
gotoxy(1,13);
write('Anda mau mencoba lagi(y/t)?= ');
repeat
s:=upcase(readkey);
until (s='Y')or (s='T');
until s='T';
end.

End.