// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  String name;

  Person({
    required this.name,
  });

  void greeting(){
    print("Hello. My name is $name");
  }
}

class Student extends Person{

  Student({required super.name});

  @override
  void greeting() {
    super.greeting();
    print("I'm a student");
  }
}

class Teacher extends Person{

  Teacher({required super.name});

  @override
  void greeting() {

    super.greeting();
    print("I'm a teacher");
  }
}

void main(List<String> args) {

  Student student = Student(name: "Eshmat");
  student.greeting();

  Teacher teacher = Teacher(name: "Toshmat");
  teacher.greeting();
}
