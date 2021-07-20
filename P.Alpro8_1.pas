Program Kalender;
uses crt;
type Hari1pekan=(Ahad,Senin,Selasa,Rabu,Kamis,Jumat,Sabtu);
     haribulan=1..31;
     bln=(Januari,Februari,Maret,April,Mei,Juni,Juli,Agustus,September,Oktober,November,Desember);
var i,awalbulan:hari1pekan;
    j,tglmaks:haribulan;
    x,y,lebar,thn:integer;
    n:bln;

function bulan(a:bln):string;
  begin
    case ord(a) of
    0,2,4,6,7,9,11: tglmaks:=31;
    3,5,8,10: tglmaks:=30;
    1: begin
       if thn mod 4=0 then tglmaks:=29
       else tglmaks:=28; end; end;
    lebar:=7;
    for i:=Ahad to sabtu do
        write(i:lebar);
    writeln;
    for x:=1 to 48 do write('-');
    writeln;
    y:=8;
    x:=ord(awalbulan);
    for j:=1 to tglmaks do
    begin
        if x=7 then
        begin
            x:=0;
            y:=y+1;
        end;
        gotoxy(lebar*x+1,y);write(j:3);
        x:=x+1;
    end;
    readln;
  end;
begin
  clrscr;
  write('Pilih tahun: ');readln(thn);
  write('Pilih bulan: ');readln(n);
  write('Hari pertama awal bulan: ');readln(awalbulan);
  writeln;
  writeln('Kalender ',n,' ',thn);
  write(bulan(n));
end.