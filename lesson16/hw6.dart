mixin YetkazibBerish{
  String masofagaQarabNarx({required double masofa, required double narxPerKm}){
    return 'Umumiy narx(masofaga kora): ${masofa * narxPerKm} UZS';
  }

  String yetkazishVaqti({required double masofa, required double tezlik}){
    return 'Yetkazib berish vaqti:      ${masofa/tezlik} soat';
  }

  String ogirlikNarxi({required double ogirlik, required double narxPerKg}){
    return 'Ogirligiga kora qoshimcha narx: ${ogirlik * narxPerKg} UZS';
  }
}

class Buyurtma with YetkazibBerish {
  double ogirlik;
  double masofa;
  double tezlik;
  double narxPerKm;
  double narxPerKg;

  Buyurtma({
    required this.ogirlik,
    required this.masofa,
    required this.tezlik,
    required this.narxPerKm,
    required this.narxPerKg,
  });
}

void main(List<String> args) {
  Buyurtma buyurtma = Buyurtma(ogirlik: 1, masofa: 1, tezlik: 60, narxPerKm: 1000, narxPerKg: 2000);
  print(buyurtma.masofagaQarabNarx(masofa: 120, narxPerKm: 1000));
  print(buyurtma.yetkazishVaqti(masofa: 120, tezlik: 60));
  print(buyurtma.ogirlikNarxi(ogirlik: 20, narxPerKg: 2000));
}
