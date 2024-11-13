void main(){
  List<Map<String, dynamic>> people = 
  [{"name":"Julie","age":40,"things":"Samsung"},
  {"name":"Bartlet","age":32,"things":"Samsung"},
  {"name":"Jayme","age":37,"things":"Apple"},
  {"name":"Geneva","age":39,"things":"Apple"},
  {"name":"Diane","age":32,"things":"Xiaomi"}];

  sortByAge(people);
  things(people);
}

void sortByAge(List<Map<String, dynamic>> people){

  people.sort((a, b) => a['age'].compareTo(b['age']));

  people.forEach((person) => print(person));
}

void things(List<Map<String, dynamic>> people) {
  Map<String, List<String>> thingsPeople = {};

  for (var person in people) {
    var wants = person['things'] is String
      ? [person['things']]
      : person['things'];

    for(var want in wants){
      thingsPeople.putIfAbsent(want, () => []).add(person['name']);
    }
  }

  print(thingsPeople);
}