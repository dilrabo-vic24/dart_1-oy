abstract class Athlete {
  String? name;
  int? age;
  
  Athlete({
    required this.name,
    required this.age,
  });

  void trainingHours();

  void perform();

  void athleteInfo(){
    print("Name:            $name");
    print("Age:             $age");
  }
}

class FootballPayer extends Athlete{

  int? hours;

  FootballPayer({
    required this.hours,
    required String name,
    required int age,
  }): super(name: name, age: age);

  @override
  void perform() {
    print("Football player plays football");
  }

  @override
  void trainingHours() {
    print("Training hours:  ${this.hours}");
  }

  @override
  void athleteInfo() {
    super.athleteInfo();
    trainingHours();
  }
}

void main(List<String> args) {
  FootballPayer footballPayer = FootballPayer(hours: 4, name: "Athlete1", age: 25);
  footballPayer.perform();
  footballPayer.athleteInfo();
}