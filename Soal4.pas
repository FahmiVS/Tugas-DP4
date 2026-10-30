program KelulusanMahasiswa;
uses crt;
var
    tugas, kuis, uts, uas, rata: array[1..5] of real;
    n, i: integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);

    for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);

        write('Nilai Tugas : ');
        readln(tugas[i]);

        write('Nilai Kuis  : ');
        readln(kuis[i]);

        write('Nilai UTS   : ');
        readln(uts[i]);

        write('Nilai UAS   : ');
        readln(uas[i]);

        rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    writeln;
    writeln('--------- Hasil Kelulusan ----------');

    for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);
        writeln('Nilai Tugas : ', tugas[i]:0:0);
        writeln('Nilai Kuis  : ', kuis[i]:0:0);
        writeln('Nilai UTS   : ', uts[i]:0:0);
        writeln('Nilai UAS   : ', uas[i]:0:0);
        writeln('Rata-rata   : ', rata[i]:0:0);

        if rata[i] >= 70 then
        writeln('Keterangan  : LULUS')
        else
        writeln('Keterangan  : TIDAK LULUS');
    end;
end.