class Order {
  int orderId;
  String productName;
  int? quantity;
  double? productPrice;
  double? discount;
  double totalPrice = 0;

  Order({required this.orderId, required this.productName, this.quantity, this.productPrice, this.discount}) {
    _calculateTotalPrice();
    applyDiscount();
  }

  void _calculateTotalPrice() {
    totalPrice = (quantity ?? 0) * (productPrice ?? 0);
  }

  void applyDiscount() {
      totalPrice = totalPrice*(1 - (discount ?? 0)/100);
  }

  @override
  String toString() {
    return """
ORDER ID:       $orderId
PRODUCT NAME:   $productName
QUANTITY:       ${quantity ??'Not given'}
PRODUCT PRICE:  ${productPrice ?? 'Not given'}
DISCOUNT:       ${discount?? 'Not given'}
TOTAL PRICE:    $totalPrice
""";}
}

void main(){
  Order order1 = Order(orderId: 1, productName: "product1");
  print(order1.toString());

  Order order2 = Order(orderId: 2, productName: "product2", discount: 10, productPrice: 100, quantity: 5);
  print(order2.toString());
}