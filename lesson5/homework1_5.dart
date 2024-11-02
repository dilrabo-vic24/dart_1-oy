import 'dart:math';
void main(){
  print('\x1B[2J\x1B[0;0H');
  print("calculateSquare:          ${calculateSquare(5)}");
  print("calculateTotalCost:       ${calculateTotalCost(100, 10)}");
  print("calculateFactorial:       ${calculateFactorial(5)}");
  print("calculateAverage:         ${calculateAverage(fillMatrix(5) as List<int>)}"); //fillMatrix List<dynamic> tipida qaytaryapti int desam ham>
  print("calculateBMI:             ${calculateBMI(70, 150)}");
  print("formatPhoneNumber:        ${formatPhoneNumber('998911234567')}");
  print("calculateCompundInterest: ${calculateCompoundInterest(boshlangichMablag: 1000, yillikFoiz: 5, yillarSoni: 10, yillikInvest: 100)}");
  print("convertTemperature:       ${convertTemperature(temperatureCelsius: 25)}");
  print("findMax:                  ${findMax(numbers: fillMatrix(5) as List<int>)}");
  print("greatestCommonDivisior:   ${greatestCommonDivisor(num1: 48, num2: 18)}");
}

List fillMatrix(int number){
  List<int> numbers = List<int>.generate(number, (i) => Random().nextInt(100));
  return numbers;
}

int calculateSquare(int number){
  return number * number;
}

double calculateTotalCost(double cast, int percent){
  return cast + cast * percent/100;
}

int calculateFactorial(int n){

  int multiplication = 1;
  List<int> number = List.generate(n, (i) => i + 1);
  number.forEach((num){
    multiplication *= num;
    });
  return multiplication;
}

double calculateAverage(List<int> numbers){
  int summa = 0;
  numbers.forEach((num) => summa += num);
  return summa/numbers.length;
}

double calculateBMI([double? weight, double? height]){

  if (weight == null || height == null) {
    print("Error: Weight and height cannot be null");
    return double.nan;
  }
  
  return weight / (height * height/10000); //boy sm da kiritiladi
}

String formatPhoneNumber(String phoneNumber){
  List<String> phoneNumberList = phoneNumber.split('');
  phoneNumberList.insert(0, '+');
  phoneNumberList.insert(4, ' (');
  phoneNumberList.insert(7, ') ');
  phoneNumberList.insert(11, '-');
  phoneNumberList.insert(14, '-');
  return phoneNumberList.join();
}

double calculateCompoundInterest({
  required double boshlangichMablag,
  required double yillikFoiz,
  required int yillarSoni,
  required double yillikInvest,
}) {
  double jamiMablag = boshlangichMablag;

  for (int i = 0; i < yillarSoni; i++) {
    jamiMablag += jamiMablag * (yillikFoiz / 100) + yillikInvest;
  }

  return jamiMablag;
}

double convertTemperature({required double temperatureCelsius}){
  return temperatureCelsius * 9/5 + 32;
}

int findMax({required List<int> numbers}){
  print(numbers);
  numbers.sort();
  return numbers[numbers.length - 1];
}

int greatestCommonDivisor({required int num1, required int num2}){
  
  int min_num = min(num1, num2);
  for(int i = min_num; i > 1; i--){
    if(num1 % i == 0 && num2 % i == 0){
      return i;
    }
  }
  return 1;
}