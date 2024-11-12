void main(){
  List<int> numbers = [-3, -2, -1, 0, 1, 2, 3];

  int firstPositive = numbers.firstWhere((number) => number > 0);

  print("First positive number: $firstPositive");
}