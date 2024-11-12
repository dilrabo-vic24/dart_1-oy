void main(){
  List<int> numbers = [1, 2, 3, 2, 3, 5, 4, 4, 1];
  print(numbers);
  updateNumbers1(numbers);
  updateNumbers2(numbers);
}
void updateNumbers1(List<int> numbers){
  List<int> updatedNumbers = numbers.toSet().toList();
  print(updatedNumbers);
}

void updateNumbers2(List<int> numbers){
  List<int> updatedNumbers = [];

  for(int number in numbers){
    if(!updatedNumbers.contains(number)){
      updatedNumbers.add(number);
    }
  }

  print(updatedNumbers);
}