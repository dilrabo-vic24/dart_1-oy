class Payment{

  static final Payment _instance = Payment._internal();

  double _balance = 0;
  static int _countPayments = 0;

  Payment._internal();

  static Payment get instance => _instance;

  void paymentMaking(double summa) {
    double percentBalance = summa * 1.02;
    _balance += percentBalance;
    _countPayments++;
    print("Payment made: $percentBalance UZS, All balance : $_balance UZS");
  }

  int get getCountsPayments => _countPayments;
  double get getBalance => _balance;
}

void main(){
  Payment payment = Payment.instance;

  payment.paymentMaking(15000);
  payment.paymentMaking(36000);

  print("All balance: ${payment.getBalance} UZS");
  print("Number of payments: ${payment.getCountsPayments}");
}