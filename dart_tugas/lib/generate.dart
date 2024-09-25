import 'dart:math';

List<int> generateAngka(int jumlah) {
  Random random = Random();
  return List.generate(jumlah, (_) => random.nextInt(40));
}
