extension HaftaKuni on DateTime{
  void printHaftaKuni(){
    List<String> haftaKunlari = ["Dushanba", "Seshanba", "Chorshanba", "Payshanba", "Juma", "Shanba", "Yakshanba"];
    print(haftaKunlari[this.weekday - 1]);
  }
}

void main(List<String> args) {
  DateTime bugunSana = DateTime(2024, 11, 24);
  bugunSana.printHaftaKuni();
}