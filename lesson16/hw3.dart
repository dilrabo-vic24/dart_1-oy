mixin NarxniOptimallashtir{
  void narxniOzgartir(List mahsulotNarxlariList){
    print(mahsulotNarxlariList.map((mahsulot) => mahsulot * 0.9).toList());
  }
}

class Mahsulot with NarxniOptimallashtir {

  List<double> mahsulotNarxlariList;

  Mahsulot({
    required this.mahsulotNarxlariList,
  });

  void optimallashtir(){
    narxniOzgartir(mahsulotNarxlariList);
  }
}

void main(List<String> args) {

  Mahsulot mahsulot = Mahsulot(mahsulotNarxlariList: [100, 200, 300]);
  mahsulot.optimallashtir();
}
