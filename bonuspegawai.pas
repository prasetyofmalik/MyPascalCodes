program bonus;
uses crt;
var
golongan:string;
lamabekerja,umur:integer;
label 3,4,5;

begin
  clrscr;
  write('Masukkan golongan Anda (staf/nonstaf): ');readln(golongan);
  write('Berapa tahun Anda bekerja: ');readln(lamabekerja);
  write('Berapa tahun umur Anda: ');readln(umur);

  if golongan='staf' then
  begin
    case lamabekerja of
      0..4 : begin writeln('Bonus 500 ribu'); goto 5; end;
      5..20: goto 3;
    end;
    3:
    case umur of
      25..49 :writeln('Bonus 300 ribu');
      50..99 :writeln('Bonus 1 juta');
    end;
  end
  else if golongan='nonstaf' then
  begin
    case lamabekerja of
      0..4: begin writeln('Tidak mendapat bonus');goto 5;end;
      5..20: goto 4;
    end;
    4:
    case umur of
      25..49: writeln('Bonus 250 ribu');
      50..99: writeln('Bonus 400 ribu');
    end;
  end;
  5:
  readln;
end.
