import 'dart:io';
import 'inversi.dart';
import 'acak.dart';
import 'sort.dart'; 
import 'generate.dart'; 
import 'piramida.dart'; 
import 'piramidashort.dart'; 

int calculatePiramidaTinggi(int jumlahAngka) {
  int n = 0;
  while ((n * (n + 1)) ~/ 2 <= jumlahAngka) {
    n++;
  }
  return n - 1; 
}

void main() {
  final stopwatch = Stopwatch();
  
  print("Selamat datang di aplikasi terminal Dart!");

  stdout.write("Masukkan jumlah angka yang ingin di-generate: ");
  int? jumlahAngka = int.tryParse(stdin.readLineSync()!);

  (jumlahAngka == null || jumlahAngka <= 0) ? print("Input tidak valid. Harap masukkan angka yang benar.") : (() {
    List<int> angkaList = generateAngka(jumlahAngka);
    print("Angka yang di-generate: $angkaList");

    int tinggiPiramida = calculatePiramidaTinggi(jumlahAngka);
    print("Tinggi piramida yang dihitung secara otomatis: $tinggiPiramida");

    print("\nPilih opsi:");
    print("1. Bubble Sort");
    print("2. Inversi");
    print("3. Acak");
    print("4. Cetak Piramida Acak");
    print("5. Cetak Piramida Short Terurut");

    stdout.write("Pilihan Anda (1/2/3/4/5): ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        stopwatch.start(); 
        List<int> sortedList = bubbleSort(angkaList);
        stopwatch.stop();
        print("Hasil Bubble Sort: $sortedList");
        print("Waktu eksekusi Bubble Sort: ${stopwatch.elapsed}");
        break;
      case '2':
        stopwatch.start();
        List<int> inversedList = inversi(angkaList);
        stopwatch.stop();
        print("Hasil Inversi: $inversedList");
        print("Waktu eksekusi Inversi: ${stopwatch.elapsed}");
        break;
      case '3':
        stopwatch.start();
        acak(angkaList);
        stopwatch.stop();
        print("Hasil setelah Acak: $angkaList");
        print("Waktu eksekusi Acak: ${stopwatch.elapsed}");
        break;
      case '4':
        stopwatch.start();
        piramidaAcak(tinggiPiramida);
        stopwatch.stop();
        print("Waktu eksekusi Piramida Acak: ${stopwatch.elapsed}");
        break;
      case '5':
        stopwatch.start();
        piramidaShortTerurut(angkaList, tinggiPiramida);
        stopwatch.stop();
        print("Waktu eksekusi Piramida Short Terurut: ${stopwatch.elapsed}");
        break;
      default:
        print("Pilihan tidak valid.");
        break;
    }
  })();
}
