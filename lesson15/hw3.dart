abstract class RestaurantItem{
  String itemName();
  double itemPrice();
}

abstract class Food extends RestaurantItem{
  String? name;
  double? price;


  Food({this.name, this.price});
  
  @override
  String itemName() => name!;
  
  @override
  double itemPrice() => price!;
}

abstract class Beverage implements RestaurantItem{
  String? name;
  double? price;
  int? storagePeriod;

  Beverage({this.name, this.price, this.storagePeriod});

  @override
  String itemName() => name!;

  @override
  double itemPrice() => price!;
}

class Palov extends Food{

  Palov({super.name, super.price});

  @override
  String itemName() {
    return super.itemName();
  }

  @override
  double itemPrice() {
    return super.itemPrice();
  }
}

class Somsa extends Food{

  Somsa({super.name, super.price});

  @override
  String itemName() {
    return super.itemName();
  }

  @override
  double itemPrice() {
    return super.itemPrice();
  }
}

class Coffee extends Beverage{

  Coffee({super.name, super.price, super.storagePeriod});

  @override
  String itemName() {
    return super.itemName();
  }

  @override
  double itemPrice() {
    return super.itemPrice();
  }

  int itemStorePeriod() => storagePeriod!;

}

class Tea extends Beverage{

  Tea({super.name, super.price, super.storagePeriod});

  @override
  String itemName() {
    return super.itemName();
  }

  @override
  double itemPrice() {
    return super.itemPrice();
  }

  int itemStorePeriod() => storagePeriod!;

}


void main(List<String> args) {

  print("---------------------Food----------------------------------");
  Palov palov = Palov(name: "Palov1", price: 100);
  print("Name:          ${palov.itemName()}");
  print("Price:         ${palov.itemPrice()}");

  Somsa somsa = Somsa(name: "Somsa1", price: 150);
  print("Name:          ${somsa.itemName()}");
  print("Price:         ${somsa.itemPrice()}");


  print("---------------------Beverages-----------------------------");
  Coffee coffee = Coffee(name: "Coffe1", price: 200, storagePeriod: 1);
  print("Name:          ${coffee.itemName()}");
  print("Price:         ${coffee.price}");
  print("StoragePeriod: ${coffee.storagePeriod}");

  Tea tea = Tea(name: "Coffe1", price: 250, storagePeriod: 2);
  print("Name:          ${tea.itemName()}");
  print("Price:         ${tea.price}");
  print("StoragePeriod: ${tea.storagePeriod}");
}
