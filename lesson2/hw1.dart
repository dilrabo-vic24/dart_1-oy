void main() {
  print('\x1B[2J\x1B[0;0H');

  print("-------------------Problem 1-------------------------");
  problem1();

  print("-------------------Problem 2-------------------------");
  problem2();

  print("-------------------Problem 3-------------------------");
  problem3();

  print("-------------------Problem 4-------------------------");
  problem4();

  print("-------------------Problem 5-------------------------");
  problem5();

  print("-------------------Problem 9-------------------------");
  problem9();

  print("-------------------Problem 10-------------------------");
  problem10();
}

void problem1() {
  var a = 35; // a = 100011
  var b = 19; // b = 10011
  var c = a | (b ^ a);
  var d = (c & b) << 2;
  var e = ~d | (c >> 3);
  
  print("c = $c");
  print("d = $d");
  print("e = $e");
}

void problem2() {
  int a = 10;
  int b = 20;
  a += 5;
  b *= a;
  a -= 7;

  print("a = $a");
  print("b = $b");
}

void problem3(){
  int m = 18;
  int n = 7;
  m ^= n;
  n = ~n;
  print("m = $m");
  print("n = $n");
}

void problem4(){
  int age = 25;
  bool hasLincense = true;
  bool isEligable = age >= 25 && hasLincense;
  print("isEligable = $isEligable");
}

void problem5(){
  int temperature = 25;

  String weatherCondition = temperature > 30 ? "hot" 
    : (15 <= temperature && temperature <= 30) ? "mild" 
    : "cold";

  print("Weather condition is $weatherCondition");
}

void problem9() {
  int a = 10, b = 5, c = -3;

  (a > 10 && b > 5) ? print("Shart bajarildi") : null;
  (c < 0) ? print("Manfiy son") : null;
  (a == 20) ? print("a ning qiymati 20") : null;
}

void problem10() {
  int x = 15, y = 10;

  (x > 10 && y > 5) ? print("Ikkala shart ham to'g'ri") : null;
  (x < 20 || y > 15) ? print("Birinchi yoki ikkinchi shart to'g'ri") : null;
  (x > 0 && y > 0) ? print("Ikkalasi ham musbat") : null;
}