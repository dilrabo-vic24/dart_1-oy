void main() {

  print('\x1B[2J\x1B[0;0H');

  double fahrenheit = 98.6;
  double celsius = (fahrenheit - 32) * 5 / 9;

  print('Celsius: ${celsius}');
}
