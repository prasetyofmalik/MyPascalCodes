program no1tugaskelompok;
  uses crt;
var
  a:integer;
  kata:string;
begin
  clrscr;
  write('Masukkan kata yang ingin dikonversi = ');
  readln(kata);
  writeln;
  FOR a := 1 TO length(kata) DO
  IF ord(kata[a]) > 96 THEN
  begin
    kata[a] := chr(ord(kata[a]) - 32);
  end
  ELSE IF ord(kata[a]) = 32 THEN
  begin
    kata[a] := chr(32);
  end
  ELSE IF ord(kata[a]) < 96 THEN
  begin
    kata[a] := chr(ord(kata[a]) + 32);
  end;
  write ('Hasil konversinya = ', kata);
 readln;
end.