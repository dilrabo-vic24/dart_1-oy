void main(){
  Map<String, Map<String, int>> grades = {
        'Sunnat': {'Matematika': 92, 'Ingliz tili': 90, 'Fizika': 78},
        'Vali': {'Matematika': 92, 'Ingliz tili': 88, 'Fizika': 80},
        'Sarvinoz': {'Matematika': 75, 'Ingliz tili': 85, 'Fizika': 82},
        'Dono': {'Matematika': 100, 'Ingliz tili': 90, 'Fizika': 95},
  };

  maxAndMinStudentsBySubject(grades);
  averageGrades(grades);
}

void maxAndMinStudentsBySubject(Map<String, Map<String, int>> grades){
  print("------------------Maximum and minimum students by subject----------------------------");
  Map<String, Map<String, dynamic>> subjectStats = {};

  for(var subject in grades.values.first.keys){
    String highestStudent = '';
    String lowestStudent = '';
    int highestGrade = -1;
    int lowestGrade = 101;

    for(var student in grades.keys){
      int currentGrade = grades[student]![subject]!;
      if(currentGrade > highestGrade){
        highestGrade = currentGrade;
        highestStudent = student;
      }else{
        lowestGrade = currentGrade;
        lowestStudent = student;
      }
    }

    subjectStats[subject] = {
      'MAXIMUM': {'Student': highestStudent, 'Grade': highestGrade},
      'MINIMUM': {'Student': lowestStudent, 'Grade': lowestGrade}
    };
  }

  for(var subject in subjectStats.keys){
    print('SUBJECT: ${subject}\n${subjectStats[subject]}');
  }
}

void averageGrades(Map<String, Map<String, int>> grades){
  print("--------------------Sorted by average grades---------------------------------------");
  Map<String, double> averageGradesMap = {};

  for(var student in grades.keys){
    int totalScore = grades[student]!.values.reduce((a, b) => a + b);
    averageGradesMap[student] = totalScore/grades[student]!.length;
  }

  List<MapEntry<String, double>> sortedStudents = averageGradesMap.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value)); 

  for(MapEntry entry in sortedStudents){
    print('${entry.key.toString().toUpperCase()}:  ${entry.value}'); //verguldan keyingi 2 ta raqamini ololmayapman
  }
}

