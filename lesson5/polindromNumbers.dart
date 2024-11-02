void main(){
  print('\x1B[2J\x1B[0;0H');
  print(checkPolindrom(12345678));
  print(checkPolindrom(1234321));

}

bool checkPolindrom(int number){
  int numberOriginal = number;
  int numberReverse = 0;

  while(number != 0){

    numberReverse = (number % 10) + numberReverse * 10;
    number = number ~/ 10;
  }
  return numberOriginal == numberReverse;
}