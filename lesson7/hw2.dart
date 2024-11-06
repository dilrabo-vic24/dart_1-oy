class Employee{
  String? name;
  double? salary;
  int? experience;

  Employee({this.name, this.salary, this.experience});

  Employee.newEmployee(this.name, double salary, int experience){
    if(salary == 1000000 && experience == 1){
      this.salary = salary;
      this.experience = experience;
    }else{
      throw Exception("You can not use this construction!");
    }
  }

  void employeeInfo() {
    print("NAME: $name\nSALARY:  $salary\nEXPERIENCE: $experience");
}

}

void main(){
  Employee staff1 = Employee(name: "Eshmat", salary: 324.342, experience: 3);
  Employee staff2 = Employee.newEmployee("Toshmat", 1000000, 1);

  staff1.employeeInfo();
  staff2.employeeInfo();
  
}