program program10_2;
uses crt;
label 1;
type data=array[1..50,1..50] of real;
var
   a,b,c: data;
   i,j,pilih,k,l,m,n: integer;
procedure perkalian;
begin
    write('Jumlah baris matriks pertama : ');readln(m);
    write('Jumlah kolom matriks pertama : ');readln(n);
    writeln('Jumlah baris matriks kedua   : ',n);
    write('Jumlah kolom matriks kedua   : ');readln(l);
    writeln;

    writeln('Matriks pertama: ');
    for i:=1 to m do
    begin
       for j:=1 to n do
       begin
         write('Nilai [',i,',',j,'] = ');readln(a[i,j]);
       end;
       writeln;
    end;
    for i:=1 to m do
    begin
       for j:=1 to n do
          write(a[i,j]:5:0);writeln;
    end;

    writeln;
    writeln('Matriks kedua: ');
    for i:=1 to n do
    begin
       for j:=1 to l do
       begin
         write('Nilai [',i,',',j,'] = ');readln(b[i,j]);
       end;
       writeln;
    end;
    for i:=1 to n do
    begin
       for j:=1 to l do
          write(b[i,j]:5:0);writeln;
    end;

    for i:=1 to m do
    begin
       for j:=1 to l do
       begin
         c[i,j]:=0;
         for k:=1 to l do
           c[i,j]:=c[i,j]+a[i,k]*b[k,j];
       end;
    end;

    writeln;
    writeln('Hasil perkalian matriks: ');
    writeln;
    for i:=1 to m do
    begin
       for j:=1 to l do write(c[i,j]:6:0);
       writeln;
    end;
    readln;
end;

procedure determinan;
var
    r,d:real;
begin
    write('Jumlah baris/kolom matriks: ');readln(n);
    writeln('Matriks ordo ',n,'*',n);
    writeln;

    for i:=1 to n do
    begin
       for j:=1 to n do
       begin
         write('Nilai [',i,',',j,'] = ');readln(a[i,j]);
       end;
       writeln;
    end;
    for i:=1 to n do
    begin
       for j:=1 to n do
          write(a[i,j]:5:0);writeln;
    end;

    if n=2 then
    begin
       d:=a[1,1]*a[2,2]-a[1,2]*a[2,1];
       writeln('Determinan matriks: ',d:0:0);
    end
    else if n>2 then
    begin
       d:=0;
       for i:=1 to n do
          for j:=1 to n-1 do
             if a[i,j]=a[i,1] then d:=d+0
             else d:=d+1;

       if d=0 then writeln('Determinan matriks: ',d:0:0)
       else if d>=1 then
       begin
          d:=1;
          for k:=1 to n do
          begin
             for l:=1 to n do
             begin
                if l>k then
                begin
                   r:=a[l,k]/a[k,k];
                   for m:=1 to n do
                      a[l,m]:=a[l,m]-(r*a[k,m]);
                end;
             end;
          end;

          for k:=1 to n do
             d:=d*a[k,k];
          writeln('Determinan matriks: ',d:0:0);
       end;
    end;
    readln;
end;

procedure transpose;
begin
   write('Jumlah baris matriks: ');readln(m);
   write('Jumlah kolom matriks: ');readln(n);
   writeln;

   for i:=1 to m do
    begin
       for j:=1 to n do
       begin
         write('Nilai [',i,',',j,'] = ');readln(a[i,j]);
       end;
       writeln;
    end;
    writeln('Matriks: ');
    for i:=1 to m do
    begin
       for j:=1 to n do
          write(a[i,j]:5:0);writeln;
    end;
    writeln;

    writeln('Transpose Matriks: ');
    for i:=1 to n do
    begin
       for j:=1 to m do
          write(a[j,i]:5:0);writeln;
    end;
    readln;
end;

procedure invers;
var
    r,d:real;
begin
    write('Jumlah baris/kolom matriks: ');readln(n);
    writeln('Matriks ordo ',n,'*',n);
    writeln;

    for i:=1 to n do
    begin
       for j:=1 to n do
       begin
         write('Nilai [',i,',',j,'] = ');readln(a[i,j]);
       end;
       writeln;
    end;
    writeln('Matriks: ');
    for i:=1 to n do
    begin
       for j:=1 to n do
          write(a[i,j]:5:0);writeln;
    end;

    for j:=n+1 to n+n do
    begin
        i:=j-n;a[i,j]:=1;
    end;
    for j:=n+1 to n+n do
        for i:=1 to n do
            if i<>j-n then a[i,j]:=0;

    for i:=1 to n do
    begin
        for j:=1 to n+n do
            if i<>j then a[i,j]:=a[i,j]/a[i,i];
        for j:=1 to n+n do
            if i=j then a[i,j]:=1;

        for l:=1 to n do
            if i<>l then
                for j:=i+1 to n+n do
                    a[l,j]:=a[l,j]-(a[i,j]*a[l,i]);
        for k:=1 to n do
            if i<>k then a[k,i]:=0;
    end;
    writeln;
    writeln('Invers Matriks:');
    for i:=1 to n do
    begin
        for j:=n+1 to n+n do
        write (a[i,j]:6:2);
        writeln;
    end;
    readln;
end;

begin
   1:
   clrscr;
   Writeln('Program Kalkulator Matriks');
   writeln('Pilih Menu: ');
   writeln('1. Perkalian Matriks');
   writeln('2. Determinan Matriks');
   writeln('3. Transpose Matriks');
   writeln('4. Invers Matriks');
   writeln('5. Keluar');
   writeln;
   write('Pilihan Anda: ');readln(pilih);
   case pilih of
      1:perkalian;
      2:determinan;
      3:transpose;
      4:invers;
      5:exit;
   end;
   goto 1;
end.