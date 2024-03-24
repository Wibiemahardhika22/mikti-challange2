/**
 * Ada dua tim senam, Tim Lumba-lumba dan Tim Koala. Mereka bertanding satu sama lain sebanyak 3 kali. Pemenang
 * dengan skor rata-rata tertinggi memenangkan trofi!
 * 
 * Tugas:
 * 1. Hitung skor rata-rata untuk setiap tim, menggunakan data uji di bawah ini.
 * 2. Bandingkan skor rata-rata tim untuk menentukan pemenang kompetisi, dan cetak ke konsol. Jangan lupa bahwa bisa
 * ada hasil seri, jadi uji juga untuk itu (seri berarti mereka memiliki skor rata-rata yang sama).
 * 3. Bonus 1: Sertakan persyaratan untuk skor minimum 100. Dengan aturan ini, sebuah tim hanya menang jika memiliki
 * skor lebih tinggi dari tim lain, dan pada saat yang sama skor minimal 100 poin. 
 * Petunjuk: Gunakan operator logika untuk menguji skor minimum, serta beberapa blok else-if.
 * 4. Bonus 2: Skor minimum juga berlaku untuk seri! Jadi seri hanya terjadi ketika kedua tim memiliki skor yang sama dan
 * keduanya memiliki skor lebih besar atau sama dengan 100 poin. Jika tidak, tidak ada tim yang memenangkan trofi.
 * 
 * Data Uji:
 * § Data 1: Lumba-lumba mendapat skor 96, 108 dan 89. Koala mendapat skor 88, 91 dan 110.
 * § Data Bonus 1: Lumba-lumba mendapat skor 97, 112 dan 101. Koala mendapat skor 109, 95 dan 123.
 * § Data Bonus 2: Lumba-lumba mendapat skor 97, 112 dan 101. Koala mendapat skor 109, 95 dan 106
 */

void main() {
  // Data Uji 1
  List<int> skorLumba1 = [96, 108, 89];
  List<int> skorKoala1 = [88, 91, 110];

  // Data Bonus 1
  List<int> skorLumba2 = [97, 112, 101];
  List<int> skorKoala2 = [109, 95, 123];

  // Data Bonus 2
  List<int> skorLumba3 = [97, 112, 101];
  List<int> skorKoala3 = [109, 95, 106];

  // Memeriksa pemenang dan menampilkan hasil
  cekPemenang("Game 1", skorLumba1, skorKoala1);
  cekPemenangGameBonus("Game Bonus 1", skorLumba2, skorKoala2);
  cekPemenangGameBonus("Game Bonus 2", skorLumba3, skorKoala3);
}

// Fungsi untuk menghitung skor rata-rata
double hitungRata(List<int> skor) {
  double total = 0;
  for (int nilai in skor) {
    total += nilai;
  }
  double avg = total / skor.length;
  return double.parse(avg.toStringAsFixed(2));
}

// Fungsi untuk memeriksa pemenang dan menampilkan hasil
void cekPemenang(String data, List<int> skorLumba, List<int> skorKoala) {
  double rataLumba = hitungRata(skorLumba);
  double rataKoala = hitungRata(skorKoala);

  // Memeriksa pemenang
  if (rataLumba > rataKoala) {
    print("$data: Tim Lumba-lumba memenangkan pertandingan!");
  } else if (rataKoala > rataLumba) {
    print("$data: Tim Koala memenangkan pertandingan!");
  } else {
    print("$data: Hasil pertandingan seri!");
  }

  print("Rata-rata skor Tim Lumba-lumba: $rataLumba");
  print("Rata-rata skor Tim Koala: $rataKoala");
  print("");
}

// Fungsi untuk memeriksa pemenang dan menampilkan hasil
void cekPemenangGameBonus(String data, List<int> skorLumba, List<int> skorKoala) {
  double rataLumba = hitungRata(skorLumba);
  double rataKoala = hitungRata(skorKoala);

  // Memeriksa pemenang
  if (rataLumba > rataKoala && rataLumba >= 100) {
    print("$data: Tim Lumba-lumba memenangkan pertandingan!");
  } else if (rataKoala > rataLumba && rataKoala >= 100) {
    print("$data: Tim Koala memenangkan pertandingan!");
  } else if (rataLumba == rataKoala && rataLumba >= 100 && rataKoala >= 100) {
    print("$data: Hasil pertandingan seri!");
  } else {
    print("$data: Tidak ada pemenang.");
  }

  print("Rata-rata skor Tim Lumba-lumba: $rataLumba");
  print("Rata-rata skor Tim Koala: $rataKoala");
  print("");
}
