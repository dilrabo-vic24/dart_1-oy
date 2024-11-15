abstract class Transport{
  String? nomi;
  int? yolovchilarSoni;
  int? tezlik;

  Transport({this.nomi, this.yolovchilarSoni, this.tezlik});

  //abstrak metodlar
  void yolovchilarniTashish();

  void tezlikniOshirish([int? tezlik]);

  void tezlikniKamaytirish([int? tezlik]);
}

class Taxi extends Transport{

  Taxi(int? tezlik, int yolovchilarSoni, ) 
  : super(
    tezlik: tezlik,
    yolovchilarSoni: yolovchilarSoni,
  );
  @override
  void tezlikniKamaytirish([int? tezlik]) {
    if(this.tezlik != null && tezlik != null){
      this.tezlik = this.tezlik! - tezlik;
      print("Taxi ${this.tezlik} bilan harakat qilyapti");
    }else{
      throw Exception("Tezlikka qiymat bering");
    }
  }

  @override
  void tezlikniOshirish([int? tezlik]) {
    if(this.tezlik != null && tezlik != null){
      this.tezlik = this.tezlik! + tezlik;
      print("Taxi ${this.tezlik} bilan harakat qilyapti");
    }else{
      throw Exception("Tezlikka qiymat bering");
    }
  }

  @override
  void yolovchilarniTashish() {
    print("Yo'lovchilar soni: ${this.yolovchilarSoni}");
  }
  
}

class Samolyot extends Transport{
  Samolyot(String nomi, int sigimi)
    :super(
      nomi: nomi,
      yolovchilarSoni: sigimi
    );



  @override
  void tezlikniKamaytirish([int? tezlik]) {
    if(this.tezlik != null && tezlik != null){
      this.tezlik = this.tezlik! - tezlik;
    }
  }

  @override
  void tezlikniOshirish([int? tezlik]) {
    if(this.tezlik != null && tezlik != null){
      this.tezlik = this.tezlik! + tezlik;
    }
  }

  @override
  void yolovchilarniTashish() {
    print("Yo'lovchilar soni: ${this.yolovchilarSoni}");
  }

}

void main(List<String> args) {
  Taxi taxi = Taxi(null, 4);
  taxi.tezlikniOshirish(30);
}