Program NilaiAlpro1KS2;
uses crt;
type
    tabel=record
        NIM:string[9];
        Nama:string[20];
        Tugas,UTS,UAS,Praktikum:byte;
        NA:real;
        Grade:char;
    end;
    kelas=array[1..40]of tabel;

    function NAkhir(a,b,c,d:integer):real;
    begin
        Nakhir:=(a+3*(b+c+d))/10;
    end;

    function grading(a:real):char;
    var hasil:char;
    begin
        case trunc(a) of
             0..19  : hasil:='E';
            20..39  : hasil:='D';
            40..59  : hasil:='C';
            60..79  : hasil:='B';
            80..100 : hasil:='A';
        end;
        grading:=hasil;
    end;

    procedure InputData(var list:kelas;n:integer);
    var i:integer;
    begin
        for i:=1 to n do
        begin
            writeln('Mahasiswa ke-',i,': ');
            with list[i] do
            begin
                write('NIM:       ');readln(NIM);
                write('Nama:      ');readln(Nama);
                write('Tugas:     ');readln(Tugas);
                write('UTS:       ');readln(UTS);
                write('UAS        ');readln(UAS);
                write('Praktikum: ');readln(Praktikum);
                NA:=Nakhir(Tugas,UTS,UAS,Praktikum);
                Grade:=grading(NA);
            end;
        end;
    end;

    procedure output(list:kelas;n:integer);
    var i:integer;
    begin
        writeln(' No ':5,' NIM ':10,' Nama ':15,' Tugas ':5,' UTS ':5,' UAS ':5,'Praktikum':9,' NA ':9,'Grade':5);
        for i:=1 to n do
        begin
            write(i:5);
            with list[i] do
                write(NIM:10,Nama:15,Tugas:5,UTS:5,UAS:5,Praktikum:9,NA:9:1,Grade:5);
            writeln;
        end;
    end;

var Alpro1KS2:kelas;
    n:integer;

begin
    clrscr;
    write('Jumlah Mahasiswa: ');
    readln(n);
    InputData(Alpro1KS2,n);

    clrscr;
    writeln('DAFTAR NILAI MATA KULIAH ALGORITMA DAN PEMROGRAMAN 1KS2 T.A. 2020/2021 ');
    writeln;
    output(Alpro1KS2,n);
    readln;
end.
