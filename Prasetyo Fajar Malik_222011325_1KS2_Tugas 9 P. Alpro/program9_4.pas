program kombinatorial;
uses crt;
label 1;
var
     pilih,m,f,n,r,perm,komb:integer;
function faktorial(a:integer):longint;
var i:integer;
begin
     if a<0 then
     begin
          writeln('tidak terdefinisi');
          readln;
          faktorial:=null;
     end
     else if a>=0 then
     begin
          faktorial:=1;
          for i:=1 to a do
              faktorial:=faktorial*i;
     end;
end;
procedure permutasi(a,b:integer);
begin
     perm:=faktorial(a) div faktorial(a-b);
end;
procedure kombinasi(a,b:integer);
begin
     permutasi(a,b);
     komb:=perm div faktorial(b);
end;
begin
     1:
     clrscr;
     writeln('Selamat datang di program kombinatorial');
     writeln('Silakan pilih menu berikut: ');
     writeln('  1. Faktorial');
     writeln('  2. Permutasi');
     writeln('  3. Kombinasi');
     writeln('  4. Keluar');
     Write('Pilihan Anda: ');readln(pilih);
     if pilih=4 then exit;
     writeln;
     case pilih of
          1:
          begin
               write('pilih angka: ');readln(f);
               writeln(f,'! = ',faktorial(f));
          end;
          2:
          begin
               write('permutasi: ');read(n);gotoxy(15,9);
               write('pilih: ');readln(r);
               permutasi(n,r);
               writeln(n,'P',r,' = ',perm);
          end;
          3:
          begin
               write('kombinasi: ');read(n);gotoxy(15,9);
               write('pilih: ');readln(r);
               kombinasi(n,r);
               writeln(n,'C',r,' = ',komb);
          end;
     end;
     readln;
     writeln;
     goto 1;
end.