# Project Vertex dengan Pendekatan Travelling Salesman Problem (TSP)

Proyek ini merupakan implementasi sederhana untuk menyelesaikan masalah **Travelling Salesman Problem (TSP)** menggunakan metode **brute force**. Program akan mencari rute terbaik dengan jarak terpendek untuk mengunjungi setiap vertex (titik) sekali dan kembali ke titik awal.

## Struktur Data

Kami menggunakan **matrix adjacency** untuk merepresentasikan jarak antar titik. Setiap elemen di matriks menyimpan jarak antara dua vertex.

### Contoh Matriks Jarak:
```dart
List<List<int>> jarak = [
  [0, 8, 3, 4, 10], // A ke lainnya: [A ke A, A ke B, A ke C, A ke D, A ke E]
  [8, 0, 5, 2, 7],  // B ke lainnya: [B ke A, B ke B, B ke C, B ke D, B ke E]
  [3, 5, 0, 1, 6],  // C ke lainnya: [C ke A, C ke B, C ke C, C ke D, C ke E]
  [4, 2, 1, 0, 3],  // D ke lainnya: [D ke A, D ke B, D ke C, D ke D, D ke E]
  [10, 7, 6, 3, 0], // E ke lainnya: [E ke A, E ke B, E ke C, E ke D, E ke E]
];
```

## Fitur

- Menghitung total jarak untuk setiap rute.
- Mencari rute dengan jarak terpendek (optimal).
- Menampilkan semua kemungkinan rute dan jaraknya.

## Algoritma

Algoritma ini bekerja dengan:
1. Membuat semua kemungkinan permutasi rute untuk vertex selain A.
2. Menghitung jarak untuk setiap rute dengan menambahkan jarak kembali ke titik awal.
3. Menyimpan dan menampilkan rute dengan jarak terpendek.



## Cara Menggunakan

1. **Clone Repository**:
   ```bash
   git clone https://github.com/chaidenfoanto/chaiden-vispro-weel4-vertex.git
    ```

2. **Masuk ke Folder Proyek**:
   ```bash
   cd chaiden-vispro-weel4-vertex.git
    ```

4. **Jalankan Program**: Program ini menggunakan bahasa Dart, jadi pastikan Dart SDK sudah terinstall.
   Untuk menjalankan program:
    ```bash
    dart run main.dart
    ```

