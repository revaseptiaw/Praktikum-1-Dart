import 'dart:io';

// Kelas abstrak utama
abstract class Konversi {
  void prosesKonversi();
}

// ================== KONVERSI SUHU ==================
class KonversiSuhu extends Konversi {
  @override
  void prosesKonversi() {
    print("\n=== Konversi Suhu ===");
    stdout.write("Masukkan suhu dalam Celsius: ");
    double celsius = double.parse(stdin.readLineSync()!);

    double fahrenheit = (celsius * 9 / 5) + 32;
    double kelvin = celsius + 273.15;
    double reamur = celsius * 4 / 5;

    print("Hasil Konversi:");
    print("- Fahrenheit: ${fahrenheit.toStringAsFixed(2)} °F");
    print("- Kelvin: ${kelvin.toStringAsFixed(2)} K");
    print("- Reamur: ${reamur.toStringAsFixed(2)} °R");
  }
}

// ================== KONVERSI MATA UANG ==================
class KonversiMataUang extends Konversi {
  @override
  void prosesKonversi() {
    print("\n=== Konversi Mata Uang (IDR ke lainnya) ===");
    stdout.write("Masukkan jumlah Rupiah (IDR): ");
    double idr = double.parse(stdin.readLineSync()!);

    double usd = idr / 16000; // kurs perkiraan
    double jpy = idr / 110;   // kurs perkiraan
    double eur = idr / 17000; // kurs perkiraan

    print("Hasil Konversi:");
    print("- USD: ${usd.toStringAsFixed(2)}");
    print("- JPY: ${jpy.toStringAsFixed(2)}");
    print("- EUR: ${eur.toStringAsFixed(2)}");
  }
}

// ================== KONVERSI PANJANG ==================
class KonversiPanjang extends Konversi {
  @override
  void prosesKonversi() {
    print("\n=== Konversi Panjang ===");
    stdout.write("Masukkan panjang dalam meter: ");
    double meter = double.parse(stdin.readLineSync()!);

    double cm = meter * 100;
    double km = meter / 1000;
    double inch = meter * 39.37;

    print("Hasil Konversi:");
    print("- Centimeter: ${cm.toStringAsFixed(2)} cm");
    print("- Kilometer: ${km.toStringAsFixed(4)} km");
    print("- Inch: ${inch.toStringAsFixed(2)} inci");
  }
}

// ================== KONVERSI BERAT ==================
class KonversiBerat extends Konversi {
  @override
  void prosesKonversi() {
    print("\n=== Konversi Berat ===");
    stdout.write("Masukkan berat dalam kilogram: ");
    double kg = double.parse(stdin.readLineSync()!);

    double gram = kg * 1000;
    double pon = kg * 2.20462;
    double ons = kg * 10;

    print("Hasil Konversi:");
    print("- Gram: ${gram.toStringAsFixed(2)} g");
    print("- Pon: ${pon.toStringAsFixed(2)} lb");
    print("- Ons: ${ons.toStringAsFixed(2)} ons");
  }
}

// ================== MAIN PROGRAM ==================
void main() {
  while (true) {
    print("\n=== PROGRAM KONVERSI MULTISATUAN ===");
    print("1. Konversi Suhu");
    print("2. Konversi Mata Uang");
    print("3. Konversi Panjang");
    print("4. Konversi Berat");
    print("5. Keluar");
    stdout.write("Pilih menu (1-5): ");
    String? pilihan = stdin.readLineSync();

    Konversi? konversi;

    switch (pilihan) {
      case '1':
        konversi = KonversiSuhu();
        break;
      case '2':
        konversi = KonversiMataUang();
        break;
      case '3':
        konversi = KonversiPanjang();
        break;
      case '4':
        konversi = KonversiBerat();
        break;
      case '5':
        print("\nTerima kasih telah menggunakan program konversi!");
        exit(0);
      default:
        print("\nPilihan tidak valid. Silakan coba lagi.");
        continue;
    }

    konversi.prosesKonversi();

    stdout.write("\nIngin melakukan konversi lain? (y/n): ");
    String? lanjut = stdin.readLineSync();
    if (lanjut?.toLowerCase() != 'y') {
      print("\nSampai jumpa lagi! 👋");
      break;
    }
  }
}
