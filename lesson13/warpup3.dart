void main(){
  List<int> numbers = [31, 0, -23, 32, 84, -65, 4, 355, 9];

  maxAndMin(numbers);

}

void maxAndMin(List numbers){
  int maxNumber = numbers[0];
  int minNumber = numbers[0];

  numbers.forEach((number){
    if(number > maxNumber){
      maxNumber = number;
    }if(number < minNumber){
      minNumber = number;
    }
  });

  print("Max number: $maxNumber");
  print("Min number: $minNumber");
}