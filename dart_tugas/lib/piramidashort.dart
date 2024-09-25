import 'dart:io';

void piramidaShortTerurut(List<int> angkaList, int tinggi) {
  angkaList.sort();

  List<String> piramida = List.generate(tinggi, (i) {
    String spasi = ' ' * (tinggi - (i + 1));
    String angka = angkaList.sublist((i * (i + 1)) ~/ 2, ((i + 1) * (i + 2)) ~/ 2).join(' ');
    return '$spasi$angka';
  });

  stdout.write(piramida.join('\n'));
}
