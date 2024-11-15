// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class BankCard {
  int? id;
  String? name;
  String? number;
  double? balance;

  BankCard({
    this.id,
    this.name,
    this.number,
    this.balance,
  });



  //abstract metodlar
  void makePayment(double paymentAmount);

  void checkBalance();

  @override
  String toString() {
    return 'BankCard(id: $id, name: $name, number: $number)';
  }
}



class CreditCard extends BankCard{
  double limitMoney;

  CreditCard({
    required super.id, 
    required super.name, 
    required super.number, 
    required super.balance,
    required this.limitMoney
    });


  @override
  void checkBalance() {
    print("Balance:  ${balance}");
  }

  @override
  void makePayment(double paymentAmount) {
    if(balance != null){
      if(balance! - paymentAmount > limitMoney){
        balance = balance! - paymentAmount;
        print("Payment successfully");
        checkBalance();
      }else{
        print("Insufficient funds");
      }
    }
  }

}

void main(List<String> args) {
  CreditCard creditCard = CreditCard(
    id: 1, 
    name: "Card1", 
    number: "3543 5646 5465 6454", 
    balance: 1000, 
    limitMoney: 10);
  creditCard.makePayment(999);

  print(creditCard.toString());
}
