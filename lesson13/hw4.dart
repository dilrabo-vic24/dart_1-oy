void main(List<String> args) {
  Map<String, int> salesAnalysis = {"Product A": 150, 
  "Product B": 200,
  "Product C": 50, 
  "Product D": 400,
  "Product E": 350};

  Map<String, int> products200 = Map.fromIterable(
    salesAnalysis.entries.where((entry) => entry.value > 200),
    key: (entry) => entry.key,
    value: (entry) => entry.value
  );
  print("Prices more than 200: $products200");


  //print(salesAnalysis.entries.toList());
  Map<String, int> sortedProducts = Map.fromEntries(salesAnalysis.entries.toList()
  ..sort((a, b) =>a.value.compareTo(b.value)));

  print("Sorted product list: $sortedProducts");
}