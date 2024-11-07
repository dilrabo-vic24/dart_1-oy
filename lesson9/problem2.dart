class Product {
  String? name;
  double? price;
  String? manufacturer;

  Product({
    this.name,
    this.price,
    this.manufacturer,
  });

  String get getDisplayInfo{
    return "Name:  $name\nPrice  ${price?? 0}\nManufacturer:  ${manufacturer ?? 'No information'}";

  }
}

void main(){
  Product product = Product(name: "Book");
  print(product.getDisplayInfo);
}
