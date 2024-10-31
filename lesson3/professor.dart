void main(){
  print('\x1B[2J\x1B[0;0H');

  List<int> students = [1, -3, 0, 4, -2];
  int count = 0;
  int k = 2;
  
  for(int i = 0; i < students.length; i++){
    if (students[i] <= 0) count++;
  }

  count >= k? print("Yes"): print("No");
}