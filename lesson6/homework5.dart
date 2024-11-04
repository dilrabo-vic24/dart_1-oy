import 'dart:math';

class Footballer{
  String name;
  String position;
  int numberOfGoals;

  Footballer({required this.name, required this.position, required this.numberOfGoals});

  @override
  String toString() {
    return "\t-----$name-----\nPOSITION:    $position\nNUMBER OF GOALS:   $numberOfGoals";
  }
}

class Group{
  List<Footballer> footballer = [];

  Group({required this.footballer});

  void addFootballer(Footballer newFootballer){
    footballer.add(newFootballer);
  }

  String maxGoal(){
    List<int> allGoals = [];

    footballer.forEach((footballerOne) => allGoals.add(footballerOne.numberOfGoals));

    int maxGoal = allGoals.reduce(max);

    for(int i = 0; i < footballer.length; i++){
      if (maxGoal == footballer[i].numberOfGoals){
        return "Top scorer:    ${footballer[i].name}\nNumber of goals:   ${maxGoal}";
      }
    }

    return "Not found";
  }

  void groupInfo(){
    footballer.forEach((footballerOne) => print(footballerOne.toString()));
  }
  
}

void main(){

  Footballer footballer1 = Footballer(name: "Cristiano Ronaldo", position: "Forward", numberOfGoals: 820);
  Footballer footballer2 = Footballer(name: "Lionel Messi", position: "Forward", numberOfGoals: 799);
  Footballer footballer3 = Footballer(name: "Robert Lewandowski", position: "Striker", numberOfGoals: 500);
  Footballer footballer4 = Footballer(name: "Kevin De Bruyne", position: "Midfielder", numberOfGoals: 130);

  List<Footballer> footballerList = [footballer1, footballer2, footballer3, footballer4];

  Group group = Group(footballer: footballerList);
  print(group.maxGoal());
  group.groupInfo();

}