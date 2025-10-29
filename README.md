Program Konversi Multisatuan — Dart
Deskripsi Program

Program Konversi Multisatuan ini dibuat menggunakan bahasa Dart.
Program ini dapat melakukan berbagai jenis konversi nilai dari satu satuan ke satuan lainnya, seperti:

Suhu (Celsius → Fahrenheit, Kelvin, Reamur)

Mata Uang (Rupiah → USD, JPY, EUR)

Panjang (Meter → Centimeter, Kilometer, Inch)

Berat (Kilogram → Gram, Pon, Ons)

Program dijalankan melalui Command Line Interface (CLI) dan bersifat interaktif, di mana pengguna dapat memilih jenis konversi yang diinginkan dan memasukkan nilai secara manual.

Fitur Utama

Menggunakan konsep OOP (Object Oriented Programming) — terdapat kelas abstrak Konversi sebagai induk dari semua jenis konversi.

Setiap konversi memiliki implementasi sendiri dengan metode prosesKonversi().

Pengguna dapat memilih jenis konversi dari menu utama.

Program dapat dijalankan berulang kali hingga pengguna memilih keluar.

Penjelasan Logika Program
1. Kelas Abstrak Konversi
abstract class Konversi {
  void prosesKonversi();
}


Digunakan sebagai blueprint (kerangka dasar) agar setiap jenis konversi memiliki fungsi prosesKonversi() masing-masing.

2. Kelas Turunan (Inheritance)

Masing-masing jenis konversi (KonversiSuhu, KonversiMataUang, KonversiPanjang, KonversiBerat) mewarisi (extends) kelas Konversi.
Setiap kelas memiliki perhitungan rumus konversinya sendiri.

3. Menu Utama (Main Program)

Menampilkan daftar menu.

Menerima input pengguna (1–5).

Menggunakan switch case untuk menentukan jenis konversi yang dipilih.

Menjalankan metode prosesKonversi() dari kelas yang dipilih.

4. Perulangan dan Kondisi

Setelah konversi selesai, program menanyakan apakah pengguna ingin melanjutkan.

Jika pengguna mengetik "y", program mengulang.

Jika tidak, program berhenti dengan pesan penutup.
