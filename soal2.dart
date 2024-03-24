/**
 * Mark dan John sedang mencoba membandingkan BMI (Body Mass Index) mereka, yang dihitung menggunakan rumus: 
 * BMI = massa / tinggi ** 2 = massa / (tinggi * tinggi) (massa dalam kg dan tinggi dalam meter).
 * 
 * Tugas:
 * 1. Simpan massa dan tinggi badan Mark dan John dalam variabel.
 * 2. Hitung kedua BMI mereka menggunakan rumus (kamu bahkan dapat menerapkan kedua versi)
 * 3. Buat variabel Boolean 'markHigherBMI' yang berisi informasi tentang apakah Mark memiliki BMI lebih tinggi dari John.
 * 
 * Data Uji:
 * § Data 1: Berat Mark 78 kg dan tinggi 1.69 m. Berat John 92 kg dan tinggi 1.95 m.
 * § Data 2: Berat Mark 95 kg dan tinggi 1.88 m. Berat John 85 kg dan tinggi 1.76 m.
 */

void main() {
  // Data Uji Mark
  double massaMark1 = 78; // kg
  double tinggiMark1 = 1.69; // meter
  double massaMark2 = 95; // kg
  double tinggiMark2 = 1.88; // meter

  // Data Uji John
  double massaJohn1 = 92; // kg
  double tinggiJohn1 = 1.95; // meter
  double massaJohn2 = 85; // kg
  double tinggiJohn2 = 1.76; // meter

  // Menghitung BMI
  double bmiMark1 = hitungBMI(massaMark1, tinggiMark1);
  double bmiMark2 = hitungBMI(massaMark2, tinggiMark2);
  double bmiJohn1 = hitungBMI(massaJohn1, tinggiJohn1);
  double bmiJohn2 = hitungBMI(massaJohn2, tinggiJohn2);

  // Membuat variabel Boolean 'markHigherBMI' (apakah Mark memiliki BMI lebih tinggi dari John)
  bool markHigherBMI1 = cekBMI(bmiMark1, bmiJohn1);
  bool markHigherBMI2 = cekBMI(bmiMark2, bmiJohn2);

  // Menampilkan hasil
  tampilkanHasil(1, bmiMark1, bmiJohn1, markHigherBMI1);
  tampilkanHasil(2, bmiMark2, bmiJohn2, markHigherBMI2);
}

// Fungsi untuk menghitung BMI
double hitungBMI(double massa, double tinggi) {
  return massa / (tinggi * tinggi);
}

// Fungsi untuk membandingkan BMI
bool cekBMI(double bmiMark, double bmiJohn) {
  return bmiMark > bmiJohn;
}

// Fungsi untuk menampilkan hasil
void tampilkanHasil(int nomorData, double bmiMark, double bmiJohn, bool markHigherBMI) {
  print("Data Uji $nomorData:");
  print("BMI Mark: $bmiMark");
  print("BMI John: $bmiJohn");
  print("Mark memiliki BMI lebih tinggi dari John: $markHigherBMI");
  print("");
}