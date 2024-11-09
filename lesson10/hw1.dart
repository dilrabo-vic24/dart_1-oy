class ShoppingCart{
  List<String>? items;

  void addItem(String item){
    items ??= [];

    items?..add(item);
  }

  void printItems(){
    items?..forEach((element) => print(element));
  }
}

void main(){
  ShoppingCart shoppingCart = ShoppingCart();

  shoppingCart.addItem("item1");
  shoppingCart.addItem("item2");

  shoppingCart.printItems();
}