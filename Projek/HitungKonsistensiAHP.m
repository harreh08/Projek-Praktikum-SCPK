function [RasioKonsistensi] = HitungKonsistensiAHP(relasiAntarKriteria)
%6a. Tentukan Indeks Konsistensi Acak yang digunakan
%Nilai yang nantinya dipakai adalah nilai pada indeks sebanyak jumlah kriteria yang ada
indeksAcak = [0 0 0.58 0.9 1.12 1.24 1.32 1.41 1.45 1.49 1.54 1.66 1.87 1.98];

%6b. Hitung jumlah kriteria, yaitu sesuai dengan ukuran matriks relasi antar kriteria
[~, jumlahKriteria] = size(relasiAntarKriteria);

%6c. Hitung nilai lambda, yaitu nilai eigenvalue dengan menggunakan fungsi eigenvector
[~, lambda] = eig(relasiAntarKriteria);

%6d. Tentukan maksimal nilai lambda yang telah dihitung sebelumnya
maksLambda = max(max(lambda));

%6e. Hitung nilai indeks konsistensi dengan rumus (maksLambda - n) / (n - 1)
IndeksKonsistensi = (maksLambda - jumlahKriteria)/(jumlahKriteria-1);

%6f. Hitung rasio konsistensi untuk mendapatkan jawaban akhir
RasioKonsistensi = IndeksKonsistensi/indeksAcak(1,jumlahKriteria);

%6g. Apabila nilai rasio konsistensi lebih dari 0.1, maka tampilkan pesan kesalahan
if RasioKonsistensi > 0.10
    str = 'Rasio Konsistensi adalah %% %1.2f. Matriks yang dievaluasi tidak konsisten!';
    str = sprintf(str,RasioKonsistensi);
    sprintf(str);
end

end