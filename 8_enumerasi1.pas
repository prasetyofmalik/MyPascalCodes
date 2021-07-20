program enumerasi1;
uses crt;
type
  bulan=(Januari,Februari,Maret,April,Mei,Juni,Juli,Agustus,September,Oktober,November,Desember);
var
  a:bulan;
  bln: integer;
  musim: string;
begin
  clrscr;
  write('Masukan bulan saat ini: ');readln(a);
  bln:= ord(a);
  case bln of
  0..1,11:musim:='dingin';
  2..4:musim:='semi';
  5..7:musim:='panas';
  8..10:musim:='gugur';
  end;
    write('Anda berada di musim ',musim,'.');
  readln;
end.


