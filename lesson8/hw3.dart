// ignore_for_file: public_member_api_docs, sort_constructors_first
class BankAccount {
  static int countBankAccount = 0;

  String? name;
  double _balance;
  String? currency;

  BankAccount(this.name, this._balance, this.currency){
    countBankAccount ++;
  }

  set setFromBalance(double withdrawMoney){
    if(_balance > 5000&&_balance >= withdrawMoney){
      _balance -= withdrawMoney;
    }else{
      print("ERROR: Insufficient funds");
    }
  }

  set setToBalance(double depositMoney){
    _balance -= depositMoney;
  }

  @override
  String toString() => 'BankAccount(name: $name, balance: $_balance, currency: $currency)';

  double get getBankAccounts{
    return _balance;
  }
}

void main(){
  BankAccount bankAccount = BankAccount("Eshmat", 35434, "UZS");

  bankAccount.setToBalance = 12345;
  print(bankAccount.toString());

  bankAccount.setFromBalance = 45565;
  print(bankAccount.toString());

  print(bankAccount.getBankAccounts);
  
}