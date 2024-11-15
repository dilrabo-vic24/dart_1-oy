// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Person{
  String getName();
  int getAge();
}

abstract class Assignable{
  void submitAssigment({required String homework});
  String getAssignmentStatus();
}

abstract class Grading{
  void gradeStudent({required Student student,required int grade});
}

class Teacher extends Person implements Grading{
  String? name;
  int? age;

  Teacher({
    this.name,
    this.age,
  });

  void teach(){
    print("${getName()} is teaching");
  }
  void gradeStudent({required Student student, required int grade}){
    student.setGrade(grade);
    print("Grading students: ${student.getName()};  Grade:  ${student.getGrade()}");
  }
  
  @override
  int getAge() => age!;
  
  @override
  String getName() => name!;
}

class Student extends Person implements Assignable{
  String? name;
  int? age;
  String status = "Not submitted";
  int? grade;

  Student({
    this.name,
    this.age,
  });

  void study(){
    print("${getName()} is studying");
  }

  @override
  int getAge() => age!;
  
  @override
  String getName() => name!;

  void submitAssigment({required String homework}){
    status = "Submitted";
    print("${getName()} downloaded homework. Homework: $homework");
  }

  @override
  String getAssignmentStatus() => status;

  void setGrade(int grade){
    this.grade = grade;
  }

  int? getGrade() => grade;
}

void main() {
  Student student = Student(name: "Student 1", age:  20);
  student.study();
  student.submitAssigment(homework: "Flutter");
  print("${student.getName()}'s assignment status: ${student.getAssignmentStatus()}");


  Teacher teacher = Teacher(name: "Teacher 1", age: 40);
  teacher.teach();
  teacher.gradeStudent(student: student, grade: 85);
  print("${student.getName()}'s grade: ${student.getGrade()}");
}