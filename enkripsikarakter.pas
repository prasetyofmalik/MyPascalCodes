Program enkripsi_sederhana;
Uses crt;
Var
 k, i : integer;
 s : string [40];
Begin
 clrscr;
 write ('Kode enkripsi : '); readln(k);
 write ('Teks yang akan dienkripsi : '); readln (s);
 for i:=1 to length(s) do
 begin
 case s[i] of
 'A'..'Z' : s[i] := char(ord('A') + (ord(s[i])-ord('A') + k) mod 26);
 'a'..'z' : s[i] := char(ord('a') + (ord(s[i])-ord('a') + k) mod 26);
 end;
 write(s[i]);
 end;
 readkey;
End.
