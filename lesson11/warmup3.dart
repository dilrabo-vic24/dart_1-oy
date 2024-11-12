void main(){
  List<int> numbers = [-1, 2, -3, 4, -5, 6];

  List<int> positiveNumbers = numbers.where((number) => number > 0).toList();

  print(positiveNumbers);
}