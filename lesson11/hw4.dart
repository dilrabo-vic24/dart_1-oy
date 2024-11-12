class Store {
  List<Map<String, dynamic>> products = [];
  List<String> orders = [];
  double _totalPrice = 0;


  Store({
    required this.products,
  }){
    productsInfo();
  }

  void makeAnOrder({required int productID}){
    for(int i = 0; i < products.length; i++){
      if(products[i]['id'] == productID){
        _totalPrice += products[i]['price'];
      }
    }
  }

  void productsInfo(){
    products.forEach((product) => print("""
ID: ${product['id']}, Name: ${product['name']},  Price: ${product['price']}"""));
  }

  double get getTotalPrice{
    return _totalPrice;
  }
}


void main(){
  List<Map<String, dynamic>> products = [{'id': 1, 'name': 'product 1', 'price': 100},
                                         {'id': 2, 'name': 'product 2', 'price': 150},
                                         {'id': 3, 'name': 'product 3', 'price': 200}];

  Store store = Store(products: products);
  store.makeAnOrder(productID: 1);
  store.makeAnOrder(productID: 2);

  print("Total price:  ${store.getTotalPrice}");
  

}
