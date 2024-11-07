class Smartphone {
  static int count = 0;

  String name;
  String brand;
  double price;

  Smartphone(this.name, this.brand, this.price){
    count ++;
  }

  set setNewName(String newName){
    name = newName;
  }

  set setNewBrand(String newBrand){
    brand = newBrand;
  }

  set setNewPrice(double newPrice){
    price = newPrice;
  }

  @override
  String toString() => 'Smartphone(name: $name, brand: $brand, price: $price)';
}

void main(){
  Smartphone smartphone = Smartphone("Samsung Galaxy S23", "Samsung", 900);
  print(smartphone.toString());

  smartphone.setNewName = "iPhone 15";
  smartphone.setNewBrand = "Apple";
  smartphone.setNewPrice = 1000;
  print(smartphone.toString());
}