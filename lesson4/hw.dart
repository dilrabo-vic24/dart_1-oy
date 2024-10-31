import 'dart:io';

void main(){
  print('\x1B[2J\x1B[0;0H');

  problem2();
  problem3();
  problem4();
  problem5a();
  problem5b();
  problem5c();
  problem5d();
  problem5e();

}

void problem2(){
  print("Enter 10 number with comma(,):");
  String? userNumbers = stdin.readLineSync()!;

  List<String> numbersString = userNumbers.split(',');
  List<int> numbersInt = [];

  if (numbersString.length != 10){
    throw Exception("You did not enter 10 numbers");
  }else{
    for(String number in numbersString){
      numbersInt.add(int.parse(number));
    }
    print('Ten number list: ${numbersInt}');
  }
}

void problem3(){
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  for(int i = 0; i <= number; i++){
    for(int j = 0; j <= number; j++){
      stdout.write("($i, $j)  ");
    }
    print('');
  }
}

void problem4(){
  int k = 0;
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++, k++){
      stdout.write('$k\t');
    }
    print('');
  }
}

void problem5a(){
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = number; i > 0; i--) {
    print('*' * i);
  }
}

void problem5b() {
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < number; i++) {

    for (int j = 0; j < i; j++) {
      stdout.write(' ');
    }

    for (int k = 0; k < number; k++) {
      stdout.write('*');
    }
    print('');
  }
}

void problem5c(){

  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < number; i++) {
    if (i == 0 || i == number - 1) {

      for (int j = 0; j < number; j++) {
        stdout.write('*');
      }
    } else {

      stdout.write('*');
      for (int j = 1; j < number - 1; j++) {
        stdout.write(' ');
      }
      stdout.write('*');
    }
    print('');
  }
}

void problem5d(){

  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < number; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write('-');
    }
    stdout.write('*');
    for (int k = i + 1; k < number; k++) {
      stdout.write('+');
    }
    print('');
  }
}

void problem5e(){

  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < number; i++) {
    for (int j = 0; j < number; j++) {
     
      if (j == i || j == number - i - 1) {

        stdout.write('*');
      } else {
        stdout.write(' ');
      }
    }
    print('');
  }
}



