program nomor_satu;
uses crt;
const Januari = 31;
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
kabisat = 366 mod 7;
Normal = 365 mod 7;

type Blntype = record
jumlah : Byte;
NamaBln : String;
end;

var DataBln : array[1..12] of Blntype;
HariPertama, totalHari,
NumDays : word;
s:string;

var Bln,Thn:word;
    v:Integer;

procedure GetDataBln;
begin
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
end;

function ThnKabisat(n:Word):Boolean;
begin
	if (N mod 4 = 0) and (N mod 100 <> 0) or (N mod 400 = 0) then
	ThnKabisat:=True
	else ThnKabisat:=False;
end;


procedure perhitungan(Thn, Bln:word);
var i : Word;
begin
	NumDays := 1;
	for I := 1 to Thn - 1 do
	begin
		if ThnKabisat(I) then
			Inc(NumDays, kabisat)
		else
			Inc(NumDays, Normal);
	end;
	for I := 1 to Bln - 1 do
		Inc(NumDays, DataBln[I].jumlah);
	totalHari := DataBln[Bln].jumlah;
	if ThnKabisat(Thn) then
	begin
		if Bln > 2 then Inc(NumDays)
		else if Bln = 2 then
		Inc(totalHari, 1);
	end;

	HariPertama := NumDays Mod 7
end;

Procedure KalenderKeluaran(Thn, Bln:word);
Var
i,v : Byte;
tanya : char;

begin
	perhitungan(Thn, Bln);
	gotoxy(6,WhereY);writeLn('Bulan ',DataBln[Bln].NamaBln,' Tahun ',Thn);
	writeLn;
	writeLn('-----------------------------------');
	writeLn('Ahad  Sen  Sel  Rab  Kam  Jum  Sab ');
	writeLn('-----------------------------------');
	GotoXY(5*HariPertama+1,WhereY);
	for i := 1 to TotalHari do
	begin
		if i<10 then write('  ',i,'  ');
		if i>9 then write('  ',i,' ');
		if WhereX > 32 then writeLn;
	end;
	writeLn('  ');
end;


begin
		GetDataBln;
		writeln(' Masukkan Tahun Kalender : ');readln(Thn);
		for v:=1 to 12 do
			KalenderKeluaran(Thn,v);
		writeLn;
		writeLn('  ');
		writeLn('-----------------------------------');
	end.
end.

begin
		GetDataBln;
		writeln(' Masukkan Tahun Kalender : ');readln(Thn);
		for v:=1 to 12 do
			KalenderKeluaran(Thn,v);
		gotoxy(1,9);
		gotoxy(1,8);
		writeLn;
		writeLn('  ');
		writeLn('-----------------------------------');
	end.

end.