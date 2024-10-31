import 'dart:io';
import 'dart:math';

void main(){
  print('\x1B[2J\x1B[0;0H');
  isPrimeNumber();
  sumFibonachiNumbers();
  minMatrix();
}

void isPrimeNumber(){
  print("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  int count = 0;

  for(int i = 2; i <= sqrt(number); i++){
    if(number % i == 0) count ++;
  }
  if(count == 0) print("Tub son");
  else print("Tub son emas");
}

void sumFibonachiNumbers(){
  int sum = 0;
  int num1 = 0, num2 = 1;
  print("Enter number: ");
  int number = int.parse(stdin.readLineSync()!);

  for(int i = 0; num2 < number; i++){
    int temp = num2;
    num2 = num1+num2;
    num1 = temp;
    if(num2 > number) break;
    sum += num2;
  }
  print("Sum = ${sum}");
}

void minMatrix(){
  List<List<int>> matrix = [];

  for(int i = 0; i < 3; i++){

    List<int> row = [];
    for(int j = 0; j < 3; j++){

      int randomNumber = Random().nextInt(100);
      row.add(randomNumber);
    }

    matrix.add(row);
  }
  print(matrix);

  int minValue = matrix[0][0];
  for(List row in matrix){
    for(int element in row){
      if(element < minValue) minValue = element;
    }
  }
  print("Minimum value = ${minValue}");
}