class Kompyuter{
  String? marka;
  String? modeli;
  double? narxi;
  String? op;
  int? ram;
  int? xotiraHajmi;
  //default konstruktor
  //Kompyuter();

  //custom konstruktor
  Kompyuter({this.marka, this.modeli, this.narxi, this.op, this.ram, this.xotiraHajmi});

  // named konstruktor
  Kompyuter.narxiBaland(double? narxi){
    if(narxi != null){
      this.narxi = narxi;
    }else{
      this.narxi = 1000;
    }

  }

  void ramniYangilar(int ram){
    this.ram = ram;
  }

  void xotiraYangila(int xotira){
    this.xotiraHajmi = xotira;
  }

  void narxiYangila(double yangiNarx){
    this.narxi = yangiNarx;
  }

  @override
  String toString() {
    return "Kompyuter markasi:  $marka\nModeli:   $modeli\nNAxr:  $narxi\nOP:   $op\nRAM:   $ram\nXotira hajmi:  $xotiraHajmi";
  }
}

void main(){
  Kompyuter kompyuter = Kompyuter(marka: "apple", modeli: "Mackbook", narxi: 324234, op: "macos", ram: 32, xotiraHajmi: 512);
  print(kompyuter);

  Kompyuter narxiBaland = Kompyuter.narxiBaland(30000);
  print(narxiBaland);
}