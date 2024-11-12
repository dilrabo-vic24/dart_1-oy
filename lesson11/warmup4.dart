void main(){
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);

  int len = numbers.length;

  for(int i = 0; i < len/2; i++){
    int temp = numbers[i];
    numbers[i] = numbers[len - i - 1];
    numbers[len - i - 1] = temp;
  }

  print(numbers);
  //tayyor metoddan foydalanish
  print(numbers.reversed.toList());
}