// 2 ta sonni bo'lish

void main() {
  print('\x1B[2J\x1B[0;0H');

  print(divide(number1: 5, number2: 0));
}

String divide({double? number1, double? number2}){

  try{
    if(number2 == 0){
      throw Exception("Cannot divide by zero");
    }else{
      return '${number1!/number2!}';
    }

  }catch (e) {
    return('Error $e');
  }
}