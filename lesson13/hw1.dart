void main(List<String> args) {
  List<String> colors = ["Red", "Blue", "Green", "Red", "Azure", "Yellow","Blue"];
  sortColors(colors);
  colorsMap(colors);
}

void sortColors(List<String> colors){
  colors.sort();
  print(colors);
}

void colorsMap(List<String> colors){
  Map<String, int> colorsMapWithAttandence = {};

  colors.forEach((color){
    if(colorsMapWithAttandence.containsKey(color)){
      colorsMapWithAttandence[color] = colorsMapWithAttandence[color]! + 1;
    }else{
      colorsMapWithAttandence[color] = 1;
    };
  });

  print(colorsMapWithAttandence);
}