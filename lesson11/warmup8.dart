void main(){

  List<int?> numbers = [1, 2, 3, null, 5, null, 7];

  int? sum = numbers.where((num) => num != null).fold(0, (a, b) => a! + b!);

  print("Sum of list: $sum");
}