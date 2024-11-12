void main(){
  List<Map<String, dynamic>> employees = [{'id': 1, 'name': 'Employee1', 'salary': 100},
                                          {'id': 2, 'name': 'Employee2', 'salary': 90},
                                          {'id': 3, 'name': 'Employee3', 'salary': 110},
                                          {'id': 4, 'name': 'Employee4', 'salary': 200},
                                          {'id': 5, 'name': 'Employee5', 'salary': 170},
                                          {'id': 6, 'name': 'Employee6', 'salary': 180},];

  updateEmployees(employees: employees);
  print("Max salary employee:  ${maxSalary(employees: employees)}");
}

void updateEmployees({required List<Map<String, dynamic>> employees}){
  List<Map<String, dynamic>> highSalaryEmployees = employees
        .where((employee) => employee['salary'] > 100)
        .toList();
  for(Map employee in highSalaryEmployees){
    print(employee);
  }
}

Map<String, dynamic> maxSalary({required List<Map<String, dynamic>> employees}){
  int maxSalaryValue =  employees
      .map((employee) => employee['salary'])
      .reduce((a, b) => a > b? a : b);

  return employees.firstWhere((employee) => employee['salary'] == maxSalaryValue);
}