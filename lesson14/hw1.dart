class Person {
  String name;
  int age;
  String email;

  Person({
    required this.name,
    required this.age,
    required this.email,
  });

  void getInfo(){
    print("NAME:    $name");
    print("AGE:     $age");
    print("EMAIL:   $email");
  }
}

class Student extends Person{

  List<String> subjects = ["Philosophy", "Computer Science"];
  String university;

  Student({
    required super.name, 
    required super.age, 
    required super.email, 
    required this.university}){
      this.subjects = subjects;
    }

  
  @override
  void getInfo() {
    super.getInfo();
    print("SUBJECTS:    $subjects");
    print("UNIVERSITY:  $university");
  }

  void study({required String subject}){
    subjects.add(subject);
  }

  void takeExam(){
    print("Student is in exam...");
  }
}

void main(List<String> args) {
  Student student = Student(
    name: "Eshmat", 
    age: 20, 
    email: "eshmat123@gmail.com", 
    university: "KAIST");

    student.study(subject: "Math");
    student.takeExam();
    student.getInfo();
  
}
