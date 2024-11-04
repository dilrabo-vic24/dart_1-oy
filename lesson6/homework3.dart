class Student {
  String name;
  int age;
  int course;

  Student(this.name, this.age, this.course);

  void printInfo() {
    print("Name: $name, Age: $age, Course: $course");
  }
}

class StudentList {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  int getStudentCount() {
    return students.length;
  }

  void printAllStudents() {
    for (Student student in students) {
      student.printInfo();
    }
  }
}

void main() {
  StudentList studentList = StudentList();

  studentList.addStudent(Student("Ali", 20, 2));
  studentList.addStudent(Student("Vali", 21, 3));
  studentList.addStudent(Student("Sami", 19, 1));

  studentList.printAllStudents();
  print("All students: ${studentList.getStudentCount()}");
}
