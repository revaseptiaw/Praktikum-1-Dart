# Program Konversi Multisatuan — Dart

## Deskripsi
Program Konversi Multisatuan ini dibuat menggunakan bahasa Dart.  
Program ini dapat melakukan berbagai jenis konversi nilai dari satu satuan ke satuan lainnya, seperti:

- Suhu (Celsius → Fahrenheit, Kelvin, Reamur)  
- Mata Uang (Rupiah → USD, JPY, EUR)  
- Panjang (Meter → Centimeter, Kilometer, Inch)  
- Berat (Kilogram → Gram, Pon, Ons)

Program dijalankan melalui Command Line Interface (CLI) dan bersifat interaktif, di mana pengguna dapat memilih jenis konversi yang diinginkan dan memasukkan nilai secara manual.

---

## Fitur Utama
- Menggunakan konsep OOP (Object Oriented Programming) — terdapat kelas abstrak `Konversi` sebagai induk dari semua jenis konversi.  
- Setiap konversi memiliki implementasi sendiri dengan metode `prosesKonversi()`.  
- Pengguna dapat memilih jenis konversi dari menu utama.  
- Program dapat dijalankan berulang kali hingga pengguna memilih keluar.  

## Penjelasan Logika Program 

Program ini dibangun menggunakan **konsep OOP (Object-Oriented Programming)** dengan struktur utama sebagai berikut:

1. **Kelas Abstrak `Konversi`**  
   Menjadi *blueprint* dasar bagi semua jenis konversi dan berisi metode abstrak `prosesKonversi()`.

2. **Kelas Turunan**  
   Setiap jenis konversi (`KonversiSuhu`, `KonversiMataUang`, `KonversiPanjang`, `KonversiBerat`) mewarisi kelas `Konversi` dan memiliki logika perhitungan sendiri.

3. **Menu Utama**  
   Menggunakan struktur `switch-case` untuk menampilkan daftar pilihan dan menjalankan konversi sesuai input pengguna.

4. **Perulangan Program**  
   Setelah satu konversi selesai, pengguna dapat memilih untuk melanjutkan atau keluar dari program.
