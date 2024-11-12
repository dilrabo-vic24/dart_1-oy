void main(){
    List<Map<String, dynamic>> students = [{'name': 'name 1', 'age': 23, 'grade': 95},
                                           {'name': 'name 2', 'age': 21, 'grade': 90},
                                           {'name': 'name 3', 'age': 21, 'grade': 100}];

  updateStudents(students: students);                                      
}

void updateStudents({required List<Map<String, dynamic>> students}){
  List<Map<String, dynamic>> highScores = students.where((student) => student['grade'] > 80).toList();
  List<Map<String, dynamic>> averageScores = students.where((student) => student['grade'] > 80).toList();

  print("High scores students: ${highScores}");
  print("Average scores students: ${averageScores}");
}