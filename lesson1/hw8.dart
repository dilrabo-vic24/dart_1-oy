void main() {
  print('\x1B[2J\x1B[0;0H');

  double income = 5000.0;
  double expenses = 3000.0;

  double savings = income - expenses;

  print('Savings: ${savings} \$');
}


