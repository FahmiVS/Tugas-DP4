program Soal3;
uses crt;
var
    nilai : array[1..10] of real;
    n, i, j : integer;
    Urut : real;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);

    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ' : ');
        readln(nilai[i]);
    end;

    for i := 1 to n - 1 do
    begin
        for j := 1 to n - i do
        begin
            if nilai[j] > nilai[j + 1] then
            begin
                Urut := nilai[j];
                nilai[j] := nilai[j + 1];
                nilai[j + 1] := Urut;
            end;
        end;
    end;

    writeln;
    writeln('Urutan Nilai');

    for i := 1 to n do
    begin
        writeln('Nilai ke-', i, ': ', nilai[i]:0:0);
    end;
end.