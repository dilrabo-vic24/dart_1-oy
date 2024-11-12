void main(){
  List<int> numbers = [12, 5, 8, 130, 44];

  int maxValue = numbers.reduce((a, b) => a > b? a: b);
  int minValue = numbers.reduce((a, b) => a > b? b: a);

  print("Max number :$maxValue\nMin number: $minValue");

}