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
            if nilai[j] > nilai[j + 1] then {Nahh disini bang.. di cek lah yang nilai ke "nilai[1]" itu lebih besar gak dari "(Nilai[1+1]) alias Nilai[2]"}
            begin {Klo iya berarti..}
                Urut := nilai[j]; {Ditentuin dlu Nilai yang sekarang.. misalnya sekarang tu j nya lagi j ke 2 misalnya berarti Urut yang sekarang itu isinya "Nilai[2]"}
                nilai[j] := nilai[j + 1]; {Teruskan "Nilai[2+1]" yang lebih besar berarti daripada j yang sekarang.. "Nilai[2]" jadi dibuatlah ini supaya nanti isi "Urut" bisa diganti}
                nilai[j + 1] := Urut; {Nahh urut skrg diganti jadi "Nilai[2+1]" brrt urutan nya udah diganti.. gak yang "Nilai[2]" skrg yg di Awal.. tapi jadi si "Nilai[3]"}
            end;
        end;
    end;

    writeln;
    writeln('Urutan Nilai');

    for i := 1 to n do
    begin
        writeln('Nilai ke-', i, ': ', nilai[i]:0:0); {Jadi yang terketik disini nnt diubah dari yang paling kecil dlu sampe yang ke terbesar}
    end;
end.

{Jadi ini bang.. kan di soal tu 1 <= n <= 10, brrt itu minimal n nya 10 dan lebih dari satu kan bang.. 
jadi Array nya [1..10], saya pake Real dan bukan integer karna lebih luas aja sih bang..}
