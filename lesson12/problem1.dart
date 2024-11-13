//Sizga matn berilgan. Ushbu matndagi har bir harfni qayta-qayta sanang 
//va map yordamida eng ko'p uchragan harfni va uning sonini toping. 
//Agar bir nechta harflar bir xil miqdorda uchrasa, ularning birinchisini qaytaring.
void main() {
  String text = "Hello world";

  Map<String, int> letters = {};

  for (int i = 0; i < text.length; i++) {
    String char = text[i].toLowerCase(); 
    if (char != ' ') { 
      if (letters.containsKey(char)) {
        letters[char] = letters[char]! + 1;
      } else {
        letters[char] = 1;
      }
    }
  }

  print(letters);

  String? maxChar;
  int maxCount = 0;

  letters.forEach((char, count) {
    if (count > maxCount) {
      maxCount = count;
      maxChar = char;
    }
  });

  print('Maximum attended letter: $maxChar, Attandence time: $maxCount');
}
