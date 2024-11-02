void main(){
  print('\x1B[2J\x1B[0;0H');
  print(plus(3,4));
  print(substraction(3,4));
  print(multiplication(3,4));
  print(division(3,4));
  print(divisionResidue(10, 0));

}

double plus(double num1, double num2){
  return num1 + num2;
}

double substraction(double num1, double num2){
  return num1 - num2;
}

double multiplication(double num1, double num2){
  return num1 * num2;
}

double division(double num1, double num2){
  try{
    return num1/num2;
  }catch (e){
    print("Error");
    return double.nan;
  }
}

double divisionResidue(double num1, double num2){
  if(num2 == 0){
    return num1 % num2;
  }else{
    throw Exception("Cannot divide by zero");
  }
}