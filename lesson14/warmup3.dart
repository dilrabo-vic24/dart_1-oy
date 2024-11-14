class Product {
  String name;
  double price;
  int? discount;

  Product({
    required this.name,
    required this.price,
    this.discount,
  }){
    calculatePrice();
  }

  double calculatePrice(){
    return price * (1 - (discount ?? 0)/100);
  }

  void productInfo(){
    print("-----------------------------------------");
    print("NAME:                 $name");
    print("PRICE:                $price");
    print("PRICE WITH DISCOUNT:  ${calculatePrice()}");
  }
  
}

class Book extends Product{
  String author;
  Book({required super.name, required super.price, required this.author, super.discount});

  @override
  void productInfo() {

    super.productInfo();
    print("AUTHOR:               $author");
  }
}

class Electronics extends Product {
  int warranty;

  Electronics({required super.name, required super.price, required this.warranty});

  @override
  double calculatePrice() {
    if(warranty >= 2){
      return super.price * 0.9;
    }else{
      return super.price;
    }
  }

  @override
  void productInfo() {
    super.productInfo();
    print("WARRANTY:  $warranty");
  }
  
}

class Clothes extends Product{
  int size;

  Clothes({required super.name, required super.price, required this.size, super.discount}){
    calculatePrice();
  }

  @override
  void productInfo() {
    super.productInfo();
    print("SIZE:                 $size");
  }

}
void main(List<String> args) {
  Book book = Book(name: "Book1", price: 1000, author: "Author1", discount: 10);
  book.productInfo();

  Electronics electronics = Electronics(name: "electronics1", price: 2000, warranty: 2);
  electronics.productInfo(); 

  Clothes clothes = Clothes(name: "dress", price: 1500, size: 100, discount: 15);
  clothes.productInfo();
}
