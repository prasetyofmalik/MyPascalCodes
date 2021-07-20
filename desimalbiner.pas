PROGRAM DesimalKeBiner;
USES crt;

TYPE
   Batas = 0..255;

VAR
   Biner : string;
   Angka : batas;

BEGIN
    clrscr;
    write('Masukkan angka: ');
    readln(Angka);
    REPEAT
        IF Angka mod 2 = 0 THEN
           Biner := '0' + Biner
        ELSE Biner := '1' + Biner;
        Angka := Angka div 2;
    UNTIL Angka = 0;
    write('Hasil konversi ke biner: ',Biner);
    readkey
END.