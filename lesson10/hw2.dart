class Product {
  String? name;
  double? price;
  int? discount;
  
  Product({
    this.name,
    this.price,
    this.discount,
  });
}

void main(){
  Product? product1;

  print("""
Name:    ${product1?.name?? "No name"}
Price:   ${product1?.price?? 0}
Discount ${product1?.name?? 0}""");

  Product product2 = Product(name: "product2", price: 1000, discount: 10);
  print("""
Name:    ${product2?.name}
Price:   ${product2?.price}
Discount ${product2?.name}""");
  
}
