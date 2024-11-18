// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String name;
  int age;

  User({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return 'User(name: $name, age: $age)';
  }
}

extension toObject on Map{
  User toUser(){
    User user =  User(name: this['name'], age: this['age']);
    return user;
  }
}

void main(List<String> args) {
  Map users = {
    'name': "Eshmat",
    'age': 20
  };

  User usersObj = users.toUser();
  print(usersObj.toString());
}