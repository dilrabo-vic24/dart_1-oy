class Avtomobil{
  final String marka;
  final String model;
  double _narx;
  int _chegirma = 5;

  Avtomobil({this.marka, this.model,});

  //getter metod
  double get getChegirmaNarx => _narx * 0.9;

  set chegirmaFoiz(int foiz){
    if(foiz == 5||foiz == 10||foiz == 15){
      _narx = _narx - _narx*foiz/100;
    }else{
      print("Faqat 5%, 10% yoki 15% kirita olasiz");
    }
  }
}

void main(){
  Avtomobil avtomobil = Avtomobil(marka: "KIA", model: "KIA K5", narx: 44000);

  print(avtomobil.getChegirmaNarx);
  avtomobil.chegirmaFoiz = 5;

  print(avtomobil.getChegirmaNarx);
}