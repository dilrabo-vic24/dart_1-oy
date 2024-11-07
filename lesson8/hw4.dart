class WeddingPlan {

  static int countWeddings = 0;
  int guests;
  double budjet;
  String address;

  WeddingPlan({
    required this.guests,
    required this.budjet,
    required this.address,
  });

  factory WeddingPlan.create({required int guests, required double budjet, required  address}){
    if(guests > 500 && budjet < 50000000){
      print("No wedding");
      throw Exception("No wedding");
    }else{
      countWeddings ++;
      return WeddingPlan(guests: guests, budjet: budjet, address: address);
    }
  }

  set setGuests(int newGuests){
    guests = newGuests;
  }

  set setBudget(double newBudget){
    budjet = newBudget;
  }

  int get getCountWeddings{
    return countWeddings;
  }

  @override
  String toString() => 'WeddingPlan(guests: $guests, budjet: $budjet UZS, address: $address)';
}

void main(){
  WeddingPlan wedding = WeddingPlan.create(guests: 400, budjet: 40000, address: "Address1");
  print(wedding.toString());

  wedding.setGuests = 410;
  wedding.setBudget = 50000;
  print(wedding.toString());

  print("Number of wedding:     ${wedding.getCountWeddings}");
}