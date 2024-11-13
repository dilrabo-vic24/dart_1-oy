void main(){
  List<double> prices = [200, 550, 700, 300, 800];

  List<double> newPrice = prices.where((price) => price > 500).toList();

  double averagePrice = (prices.reduce((a, b) => a + b)/prices.length);

  print("Prices more than 500:  $newPrice");
  print("Average price:         $averagePrice");
}