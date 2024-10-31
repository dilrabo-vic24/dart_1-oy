void main(){
  print('\x1B[2J\x1B[0;0H');
  var x = 17, y = 9;
  print("x & y = ${x&y}");
  print("x | y = ${x|y}");
  print("x ^ y = ${x^y}");
  print("~x = ${(~x)}");
  print("x << 2 = ${x << 2}");
  print("y >> 2 = ${y >> 2}");
}