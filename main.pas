program modifikasicontoh81;
uses crt;
const 
     Januari   = 31;
     Februari  = 28;
     Maret     = 31;
     April     = 30;
     Mei       = 31;
     Juni      = 30;
     Juli      = 31;
     Agustus   = 31;
     September = 30;
     Oktober   = 31;
     November  = 30;
     Desember  = 31;
     kabisat   = 366 mod 7;
     Normal    = 365 mod 7;
type 
     Blntype = record 
     jumlah:Byte;
     NamaBln:String;
end;
var 
     DataBln:array[1..12] of Blntype;
     awalbulan,tglmaks,NumDays,Thn: word;
     m: Integer;
procedure GetDataBln;
begin 
     DataBln[ 1].jumlah:= 31;
     DataBln[ 2].jumlah:= 28;
     DataBln[ 3].jumlah:= 31;
     DataBln[ 4].jumlah:= 30;
     DataBln[ 5].jumlah:= 31;
     DataBln[ 6].jumlah:= 30;
     DataBln[ 7].jumlah:= 31;
     DataBln[ 8].jumlah:= 31;
     DataBln[ 9].jumlah:= 30;
     DataBln[10].jumlah:= 31;
     DataBln[11].jumlah:= 30;
     DataBln[12].jumlah:= 31;
     DataBln[ 1].NamaBln:= 'Januari';
     DataBln[ 2].NamaBln:= 'Februari';
     DataBln[ 3].NamaBln:= 'Maret';
     DataBln[ 4].NamaBln:= 'April';
     DataBln[ 5].NamaBln:= 'Mei';
     DataBln[ 6].NamaBln:= 'Juni';
     DataBln[ 7].NamaBln:= 'Juli';
     DataBln[ 8].NamaBln:= 'Agustus';
     DataBln[ 9].NamaBln:= 'September';
     DataBln[10].NamaBln:= 'Oktober';
     DataBln[11].NamaBln:= 'November';
     DataBln[12].NamaBln:= 'Desember';
end;
function ThnKabisat(n:Word):Boolean;
begin 
     if (N mod 4 = 0)and(N mod 100 <> 0)or(N mod 400 = 0) then 
     ThnKabisat:= True
     else 
     ThnKabisat:= False;
end;
procedure perhitungan (Thn, Bln:word);
var i:Word;
begin NumDays:= 1;
     for i:= 1 to Thn - 1 do
     begin 
         if ThnKabisat(i) then 
         Inc (NumDays, kabisat)
         else 
         Inc (NumDays, normal);
     end;
     for I:= 1 to Bln - 1 do
          Inc (NumDays, DataBln[i].jumlah);
     tglmaks:= DataBln[Bln].jumlah;
     if ThnKabisat(Thn) then 
     begin 
         if Bln > 2 then 
         Inc (NumDays)
         else if Bln = 2 then 
         Inc (tglmaks, 1);
     end;
      awalbulan:= NumDays Mod 7 
end;
Procedure KalenderKeluaran (Thn, Bln:word);
Var 
     i:Byte;
begin 
     perhitungan (Thn, Bln);
     writeln;
     gotoxy (10, WhereY);
     writeLn (DataBln[Bln].NamaBln, ' ', Thn);
     writeLn ('----------------------------------');
     writeLn ('Ahad  Sen  Sel  Rab  Kam  Jum  Sab');
     writeLn ('----------------------------------');
     GotoXY (5 * awalbulan + 1, WhereY);
     for i:= 1 to tglmaks do
     begin 
         if i <= 9 then write ('  ', i, '  ');
         if i >=10 then write ('  ', i, ' ');
         if WhereX >32 then writeLn;
     end;
     writeln;
end;
begin 
     clrscr;
     GetDataBln;
     write('Pilih Kalender Tahun: ');
     readln(Thn);
     for m := 1 to 12 do
         KalenderKeluaran(Thn,m);
     writeln;
     writeln ('----------------------------------');
end.