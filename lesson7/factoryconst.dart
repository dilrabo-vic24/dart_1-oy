class Product{
  String? name;
  double? price;
  int? amount;

  Product({this.name, this.price, this.amount});

  void productInfo(){
    print("NAME:    $name\nPRICE:   $price\nAMOUNT:   $amount");
  }
}

void main(){
  Product product = Product(amount: 4, name: "book", price: 435.54);
  product.productInfo();
}