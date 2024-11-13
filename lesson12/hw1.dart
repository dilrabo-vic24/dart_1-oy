void main() {
  Map<String, List<String>> courseMap = {
    'Math': ['Ali', 'Eshmat', 'Vali'],
    'Physics': ['Ali', 'Toshmat', 'Vali'],
    'Chemistry': ['Eshmat', 'Vali', 'Tesha'],
    'English': ['Ali', 'Vali', 'Tesha'],
  };

  StudentAndCourse(coursesMap: courseMap);
}

void StudentAndCourse({required Map<String, List<String>> coursesMap}) {
  
  coursesMap.forEach((course, students) {
    print("Course:  $course;   Students:  $students");
  });


  Map<String, List<String>> studentCourses = {};

  coursesMap.forEach((course, students) {
    for (String student in students) {
      if (studentCourses.containsKey(student)) {
        studentCourses[student]!.add(course);
      } else {
        studentCourses[student] = [course];
      }
    }
  });

  print('\nStudents enrolled in multiple courses:');
  studentCourses.forEach((student, courses) {
    if (courses.length > 1) {
      print("Student: $student;   Courses Count: ${courses.length};   Courses: $courses");
    }
  });
}
