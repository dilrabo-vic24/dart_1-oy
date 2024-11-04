class SanoatMahsuloti{
  String name;
  int year;
  double price;

  SanoatMahsuloti({
    required this.name, 
    required this.year, 
    required this.price
  });

  void malumotlar(){
    print("""
NAME:       $name
YEAR:       $year
PRICE:      $price sum
""");}

}

void main(){
  SanoatMahsuloti sanoatMahsuloti1 = SanoatMahsuloti(name: "Televizor", year: 2023, price: 3000000);
  SanoatMahsuloti sanoatMahsuloti2 = SanoatMahsuloti(name: "Sovutgich", year: 2022, price: 2500000);

  sanoatMahsuloti1.malumotlar();
  sanoatMahsuloti2.malumotlar();

}