class Person {
  String name;
  String surname;
  String phoneNumber;

  Person({
    required this.name,
    required this.surname,
    required this.phoneNumber,
  });

  String getFullname(){
    return "Fullname:            $name $surname";
  }

  void time(){
    print("Sold time:           ${DateTime.now()}");
  }
}

class Salesperson extends Person{

  Salesperson({required super.name, required super.surname, required super.phoneNumber});

  void makeSale(){
    print("Information about saler:\n${this.getFullname()}");
    print("Phone number:        ${this.phoneNumber}");
    time();
  }
}

class Client extends Person{

  Client({required super.name, required super.surname, required super.phoneNumber});

  void makePurchase(){
    print("Information about client:\n${this.getFullname()}");
    print("Phone number:        ${this.phoneNumber}");
    time();
  }
}

void main(List<String> args) {
  Salesperson salesperson = Salesperson(name: "Eshmat", surname: "Toshmatov", phoneNumber: "+998 91 234 56 78");
  salesperson.makeSale();

  Client client = Client(name: "Toshmat", surname: "Eshmatov", phoneNumber: "+998 99 876 54 32");
  client.makePurchase();
}
