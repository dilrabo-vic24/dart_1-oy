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
}
//----------------------------------------------------------------
void problem1(){
  print("Enter 3 number: \nnum1 = ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("num2 = ");
  int num2 = int.parse(stdin.readLineSync()!);

  print("num3 = ");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 == num2 && num2 == num3) print("Barcha sonlar teng");
  else if (num1 == num2 || num2 == num3 || num3 == num1) print("Faqat ikkita son teng");
  else print("Barcha sonlar har xil");
}
//------------------------------------------------------------------
void problem2(){
  print("Enter 2 number: \nnum1 = ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("num2 = ");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Enter mathematic operation: ");
  String? operation = stdin.readLineSync();

  switch(operation){
    case '+': print("num1 + num2 = ${num1 + num2}"); break;
    case '-': print("num1 - num2 = ${num1 - num2}"); break;
    case '/':
      if (num2 == 0) print("Cannot divided by zero!");
      else print("num1/num2 = ${num1/num2}");
      break;
    case '*': print("num1 * num2 = ${num1 * num2}"); break;
    default: print('\u001B[31mWrong operand\u001B[0m');
  }
}
//----------------------------------------------------------------------------
void problem3(){
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter experience: ");
  int experience = int.parse(stdin.readLineSync()!);

  if (age >= 18 && experience > 2) print("Ishga qabul qilinasiz");
  else print("Ishga qabul qilinmaysiz"); 
  
}
//-------------------------------------------------------------------------------------
void problem4(){
  stdout.write("Enter username: ");
  String? username = stdin.readLineSync()!;

  stdout.write("Enter password: ");
  String? password = stdin.readLineSync()!;

  if (username == 'admin' && password == '1234') print("Welcome, admin!");
  else print("Username or password is incorrect");
}
//----------------------------------------------------------------------------
void problem5(){
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number >= 0) print("Square root of math is ${sqrt(number)}");
  else print("Square root does not exist");
}
//--------------------------------------------------------------------------
void problem6(){
  stdout.write("Enter a day of week: ");
  String? day = stdin.readLineSync()!;

  switch(day){
    case 'Monday': print("Math"); break;
    case 'Tuesday': print("Physics"); break;
    case 'Wednesday': print("Programmming"); break;
    case 'Thursday': print("Foreign language"); break;
    case 'Friday': print("Mother tongue"); break;
    case 'Saturday' : print("PI"); break;
    case 'Sunday': print("No lessons"); break;
    default: print("Day doesn't exist");
  }
}
//-----------------------------------------------------------------
void problem7(){
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  number > 100? print("Katta"): print("Kichik yoki teng");
}

void problem8(){
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  switch(number){
    case 1: print("apple"); break;
    case 2: print("banana"); break;
    case 3: print("apelsin"); break;
    default: print("No product");
  }
}
//-------------------------------------------------------------------
void problem9(){
  stdout.write("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number > 0 && number % 2 == 1) print("Positive and odd");
  else if (number > 0 && number % 2 == 0) print("Positive and even");
  else if (number < 0 && number % 2 == 1) print("Negative and odd");
  else if (number < 0 && number % 2 == 0) print("Negative and even");
  else print("number is null");
}