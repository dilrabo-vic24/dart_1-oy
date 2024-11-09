class Employee{
  String name;
  String? department;
  String? phoneNumber;

  Employee({required this.name, this.department, this.phoneNumber});

  String getDetails(){
    return """
NAME:  $name
DEPARTMENT:  ${department ?? 'Department is not specified'}
PHONE NUMBER:  ${phoneNumber ?? 'Phone number is not available'}
    """;
  }
}

void main(){
  Employee employee1 = Employee(name: "Eshmat");
  print(employee1.getDetails());

  Employee employee2 = Employee(name: "Eshmat", department: "department1");
  print(employee2.getDetails());
  
  Employee employee3 = Employee(name: "Eshmat", phoneNumber: "3243425349875");
  print(employee3.getDetails());

}