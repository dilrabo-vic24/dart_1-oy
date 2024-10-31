import 'dart:io';
import 'dart:math';

void main(){
  print('\x1B[2J\x1B[0;0H');

  problem1();
  problem2();
  problem3();
  problem4();
  problem5();
  problem6();
  problem7();
  problem8();
  problem9();
  problem10();



}
void problem1(){
  stdout.write("Enter radius: ");
  double radius = double.parse(stdin.readLineSync()!);

  if (radius * 2 > 10) print("Length of circle: ${2*pi*radius}");
  else print("Area of circle: ${pi*pow(radius, 2)}");
}

void problem2(){
  String number = '21630';

  List<String> digits = number.split('');

  for (int i = 0; i < digits.length; i++) {
    for (int j = i + 1; j < digits.length; j++) {
      if (int.parse(digits[i]) < int.parse(digits[j])) {

        String temp = digits[i];
        digits[i] = digits[j];
        digits[j] = temp;      
      }
    }
  }
  print("Sorted number: ${digits.join('')}");
}

void problem3(){
  Map<String, int> studentsScore = {};
  String topStudent = '';
  int heigestScore = 0;

  for(int i = 0; i < 2; i++){
    stdout.write("Enter student: ");
    String student = stdin.readLineSync()!;

    stdout.write("Enter score of $student: ");
    int score = int.parse(stdin.readLineSync()!);

    studentsScore[student] = score;

    if (i == 0 || score > heigestScore){
      heigestScore = score;
      topStudent = student;
    }
  }
  print("Top student: ${topStudent}\nHeigest score: ${heigestScore}");
}

void problem4(){
  stdout.write("Enter x1 and y1:\nx1 = ");
  double x1 = double.parse(stdin.readLineSync()!);

  stdout.write("y1 = ");
  double y1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter x2 and y2:\nx2 = ");
  double x2 = double.parse(stdin.readLineSync()!);

  stdout.write("y2 = ");
  double y2 = double.parse(stdin.readLineSync()!);

  double distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
  print("Distance: $distance");
}

void problem5(){
  stdout.write("Enter 'yes' or 'no'");
  String response = stdin.readLineSync()!;

  if (response == 'yes') print("You have argued");
}

void problem6(){
  stdout.write("Enter string1: ");
  String string1 = stdin.readLineSync()!;

  stdout.write("Enter string2: ");
  String string2 = stdin.readLineSync()!;

  if (string1.compareTo(string2) == 0) print("Strings are equal");
  else print("Strings are not equal");
}

void problem7(){
  stdout.write("Enter score: ");
  int score = int.parse(stdin.readLineSync()!);

  if (score >= 90 && score <= 100) print("A");
  else if (score >= 80) print("B");
  else if (score >= 70) print("C");
  else if (score >= 60) print("D");
  else if (score < 60 && score >= 0) print("F");
  else print("Wrong score entered");
}

void problem8(){
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  (number % 2 == 0)? print("Even even"): print("Odd number");
}

void problem9(){
  print('Enter number of months(1-12):');
  int numberMonth = int.parse(stdin.readLineSync()!);

  switch (numberMonth) {
    case 12:
    case 1:
    case 2:
      print('Winter');
      break;
    case 3:
    case 4:
    case 5:
      print('Spring');
      break;
    case 6:
    case 7:
    case 8:
      print('Summer');
      break;
    case 9:
    case 10:
    case 11:
      print('Autumn');
      break;
    default:
      print('Wrong number');
  }
}

void problem10(){
  print('Enter number:');
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) print("Even number");
  else if(number % 2 == 1) print("Odd number");
  else print("Zero");
}