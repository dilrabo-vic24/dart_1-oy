class Student{
  String? name;
  int? age;
  int? course;

//  Student();
  Student(this.name, this.age, this.course);

  void studentInfo(){
    print("""
NAME:     $name
AGE:      $age
COURSE:   $course
""");}
}

void main(){
  Student student = Student("Eshmat", 18, 4);
  student.studentInfo();
}