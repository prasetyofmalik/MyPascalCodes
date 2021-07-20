Program PermutasiKelompok6;
Uses crt;
Var
  a,b,c,d,e,n:integer;
Begin
  Clrscr;
  writeln('PROGRAM PERMUTASI ANGKA');
  writeln('=======================');
  write('Masukkan Jumlah Permutasi = '); readln(n);
  writeln('Maka hasil permutasi dari ',n,' angka pertama adalah :');
  FOR a:=1 to n do
  Begin
    FOR b:=1 to n do
    Begin
      IF b<>a THEN
      IF n=2 THEN write(a,'',b,' ')
      ELSE
      FOR c:=1 to n do
      Begin
        IF c<>a THEN
        IF c<>b THEN
        IF n=3 THEN write(a,'',b,'',c,' ')
        ELSE
        Begin
          FOR d:=1 to n do
          Begin
            IF d<>a THEN
            IF d<>b THEN
            IF d<>c THEN
            IF n=4 THEN write(a,'',b,'',c,'',d,' ')
            ELSE
            Begin
              e:=15-(a+b+c+d);
              IF n=5 THEN write(a,'',b,'',c,'',d,'',e,' ');
            End;
          End;
        end;
      end;
    end;
  end;
  readln;
end.
