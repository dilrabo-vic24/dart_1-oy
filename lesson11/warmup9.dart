void main(){
  List<int> numbers = [5, 3, 8, 1, 2];
  //to'g'ri tartibda sortlash
  numbers.sort();
  print("O'sib borish tartibida: $numbers");

  //teskari tartibda sortlash
  numbers.sort((a, b) => b.compareTo(a));
  print("Kamayish tartibida: $numbers");

}