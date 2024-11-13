//Sizda map shaklida karta va qiymatlar mavjud, 
//masalan { "A": 1, "K": 13, "Q": 12, "J": 11, "10": 10 }. 
//Sizga bir nechta kartalar ketma-ketligi berilgan, masalan ["A", "K", "10", "Q"]
//Ushbu kartalar ketma-ketligidagi kartalarning qiymatlarini yig'indisini hisoblab toping.

void main(){
  Map<String, int> mainCards = { "A": 1, "K": 13, "Q": 12, "J": 11, "10": 10 };
  List<String> currentCards = ["A", "K", "10", "Q", "N"];
  int sumOfCards = 0;

  currentCards.forEach((card){
    if(mainCards.containsKey(card)){
      sumOfCards = sumOfCards + mainCards[card]!;
    }else{
      print("The value of $card is not available");
    }
  });

  print('Sum of current cards: $sumOfCards');
}