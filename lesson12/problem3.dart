//Berilgan massivda har bir elementning nechta marta uchraganligini hisoblang
//Mapdan foydalanib, massivdagi eng kam uchragan elementlarni yangi massiv shaklida qaytaring
//Masalan, [4, 5, 6, 5, 4, 3, 3, 6, 7] massivida 7 faqat bir marta uchraydi, shuning uchun natijada [7]ni qaytarish kerak.

void main(){
  List<int> numbers = [4, 5, 4, 5, 4, 3, 3, 6, 7];

  Map<int, int> numbersMap = {};

  for(int number in numbers){
    if(!numbersMap.containsKey(number)){
      numbersMap[number] = 1;
    }else{
      numbersMap[number] = numbersMap[number]! +  1;
    }
  }

  print('Numbers with attandence time: $numbersMap');

  int minCount = numbersMap.values.reduce((a, b) => a < b ? a : b);
 
  List<int> minAttandedNumbers = numbersMap.entries
    .where((entry) => entry.value == minCount)
    .map((entry) => entry.key)
    .toList();

  print('Min attandended numbers: $minAttandedNumbers\nAttandence time: $minCount');
}