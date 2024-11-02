import 'dart:io';
import 'dart:math';

//silindr hajmini hisoblash
void main() {
  print('\x1B[2J\x1B[0;0H');

  stdout.write("Enter radius: ");
  double radius = double.parse(stdin.readLineSync()!);

  stdout.write("Enter height: ");
  double height = double.parse(stdin.readLineSync()!);

  double volume = problem(radius, height);
  print("Volume: $volume");
}

double problem(double radius, double height) {

  return pi * pow(radius, 2) * height;
}
