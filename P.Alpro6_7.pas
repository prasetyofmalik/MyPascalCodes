program usiamahasiswa;
uses crt;
var
  i,n,usia,u17,u18,u19,u20,ux: integer;
begin
  clrscr;
  write('Masukkan jumlah mahasiswa :');
  readln(n);
    u17:=0;u18:=0;u19:=0;u20:=0;ux:=0;
    i:=1;
    while i<=n do
    begin
      write('Masukkan usia mahasiswa ke-',i,': ');
      readln(usia); i:=i+1;
    case usia of
    17: u17:=u17+1;
    18: u18:=u18+1;
    19: u19:=u19+1;
    20: u20:=u20+1;
    else
    ux:=ux+1;
    end;
    end;
    writeln('Jumlah mahasiswa berusia 17 tahun = ',u17);
    writeln('Jumlah mahasiswa berusia 18 tahun = ',u18);
    writeln('Jumlah mahasiswa berusia 19 tahun = ',u19);
    writeln('Jumlah mahasiswa berusia 20 tahun = ',u20);
    writeln('Jumlah mahasiswa berusia selain itu = ',ux);
 readln;
end.
