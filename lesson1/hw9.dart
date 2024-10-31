import 'dart:io';

void main() {

  print('\x1B[2J\x1B[0;0H');

  print('Enter the temperature:');
  double temperature = double.parse(stdin.readLineSync()!);
  
  print('Fahrenheit (F) or Celsius (C)? (F/C):');
  String scale = stdin.readLineSync()!.toUpperCase();

  double convertedTemperature;

  if (scale == 'F') {

    convertedTemperature = (temperature - 32) * 5 / 9;
    print('Celsius: ${convertedTemperature} C');

  } else if (scale == 'C') {

    convertedTemperature = (temperature * 9 / 5) + 32;
    print('Fahrenheit: ${convertedTemperature} F');

  } else {
    print('Enter either F or C.');
  }
}
