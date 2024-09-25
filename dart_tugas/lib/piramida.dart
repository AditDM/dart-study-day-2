import 'dart:math';
import 'dart:io';

void piramidaAcak(int tinggi) {
  Random random = Random();
  List<int> angkaList = List.generate((tinggi * (tinggi + 1)) ~/ 2, (_) => random.nextInt(100));

  List<String> piramida = List.generate(tinggi, (i) {
    String spasi = ' ' * (tinggi - (i + 1));
    String angka = angkaList.sublist((i * (i + 1)) ~/ 2, ((i + 1) * (i + 2)) ~/ 2).join(' ');
    return '$spasi$angka';
  });

  stdout.write(piramida.join('\n'));
}
