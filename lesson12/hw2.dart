void main() {
  Map<String, Set<String>> employees = {
    'Ali': {'Programming', 'Finance'},
    'Vali': {'Programming', 'Marketing'},
    'Eshmat': {'Marketing', 'Finance'},
    'Toshmat': {'Programming'},
  };

  Map<String, int> departmentCount = {};

  employees.forEach((employee, departments) {
    for (String department in departments) {
      if (departmentCount.containsKey(department)) {
        departmentCount[department] = departmentCount[department]! + 1;
      } else {
        departmentCount[department] = 1;
      }
    }
  });

  departmentCount.forEach((department, count) {
    print('$department: $count employees');
  });
}
