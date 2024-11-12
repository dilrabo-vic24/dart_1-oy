void main(){
  List<int> numbers = [1, 6, 1, 4, 5, 3];

  List<List<int>> pairedNumbers = numbers.asMap().entries
      .where((entry) => entry.key % 2 == 0)
      .map((entry) => [entry.value, numbers[entry.key + 1]])
      .toList();

  print(pairedNumbers);
}