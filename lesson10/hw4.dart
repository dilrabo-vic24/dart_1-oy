class Order {
  late final int orderId;

  set setOrderId(int id) {
    try {
      orderId;
      throw Exception("OrderID can be given only once");
    } catch (e) {
      orderId = id;
    }
  }

  int get getOrderId{
    try{
      return orderId;
    }catch(e){
      throw Exception("Not given");
    }
  }

  @override
  String toString() => 'Order(orderId: $orderId)';
}

class Payment {
  late final double amountPaid;

  set setAmountPaid(double transfer) {
    try {
      amountPaid;
      throw Exception("amountPaid can be given only once");
    } catch (e) {
      amountPaid = transfer;
    }
  }

  double get getAmountPaid{
    try{
      return amountPaid;
    }catch(e){
      throw Exception("Not given");
    }
  }

void makingPayment(double transfer) {
    if (amountPaid == null) {
      throw Exception("Amount paid is not given");
    }
    if (transfer > amountPaid) {
      throw Exception("Insufficient funds or amount payment is not given");
    }
    print("Payment of $transfer is processed.");
  }

  @override
  String toString() => 'Payment(amountPaid: $amountPaid)';
}

void main() {
  Order order1 = Order();
  order1.setOrderId = 1;
  print(order1.getOrderId);

  Payment payment = Payment();
  payment.setAmountPaid = 100;
  print(payment.getAmountPaid);
  payment.makingPayment(10);
}
