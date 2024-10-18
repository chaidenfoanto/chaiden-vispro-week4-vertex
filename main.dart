// Deklarasi array jarak antar titik (hardcode)
List<List<int>> jarak = [
  [0, 8, 3, 4, 10], // A ke lainnya: [A ke A, A ke B, A ke C, A ke D, A ke E]
  [8, 0, 5, 2, 7],  // B ke lainnya: [B ke A, B ke B, B ke C, B ke D, B ke E]
  [3, 5, 0, 1, 6],  // C ke lainnya: [C ke A, C ke B, C ke C, C ke D, C ke E]
  [4, 2, 1, 0, 3],  // D ke lainnya: [D ke A, D ke B, D ke C, D ke D, D ke E]
  [10, 7, 6, 3, 0], // E ke lainnya: [E ke A, E ke B, E ke C, E ke D, E ke E]
];

List<String> titik = ['A', 'B', 'C', 'D', 'E'];
int n = titik.length; // Jumlah titik

// Fungsi untuk menghitung total jarak rute tertentu
int hitungJarak(List<int> rute) {
  int totalJarak = 0;
  for (int i = 0; i < rute.length - 1; i++) {
    totalJarak += jarak[rute[i]][rute[i + 1]];
  }
  // Tambahkan jarak kembali ke titik awal (A)
  totalJarak += jarak[rute.last][rute.first];
  return totalJarak;
}

// Fungsi untuk mencari semua rute dan menentukan rute terbaik
void cariRuteTerbaik() {
  List<int> ruteAwal = [1, 2, 3, 4]; // Rute [B, C, D, E], tanpa A
  List<int> ruteTerbaik = [];
  int jarakTerbaik = double.maxFinite.toInt(); // Gunakan nilai maksimum yang lebih aman

  print("Kemungkinan rute dan jaraknya :");
  
  // Cek semua kemungkinan permutasi rute (selain A)
  do {
    // Buat rute penuh dengan A di awal dan akhir
    List<int> ruteLengkap = [0] + ruteAwal + [0]; // Tambah A di awal dan akhir
    int jarakSaatIni = hitungJarak(ruteLengkap);
    
    // Cetak rute saat ini dan jaraknya
    print("${ruteLengkap.map((i) => titik[i]).join(' → ')} : $jarakSaatIni");
    
    // Bandingkan dengan jarak terbaik
    if (jarakSaatIni < jarakTerbaik) {
      jarakTerbaik = jarakSaatIni;
      ruteTerbaik = List.from(ruteLengkap);
    }
  } while (nextPermutation(ruteAwal));

  // Cetak hasil rute terbaik
  print("\nRute terbaik\t: ${ruteTerbaik.map((i) => titik[i]).join(' → ')}");
  print("Jarak terbaik\t: $jarakTerbaik");
}

// Fungsi untuk menghasilkan permutasi berikutnya (brute force)
bool nextPermutation(List<int> array) {
  int i = array.length - 2;
  while (i >= 0 && array[i] >= array[i + 1]) {
    i--;
  }
  if (i == -1) return false;

  int j = array.length - 1;
  while (array[i] >= array[j]) {
    j--;
  }
  swap(array, i, j);
  reverse(array, i + 1);
  return true;
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}

void reverse(List<int> array, int start) {
  int end = array.length - 1;
  while (start < end) {
    swap(array, start++, end--);
  }
}

void main() {
  cariRuteTerbaik();
}
