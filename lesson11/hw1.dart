import 'dart:math';

void updateStudent({required List<int> studentCount, required int index, required bool flag}){
  if(index >= 0 && index < studentCount.length){
    if(flag){
      studentCount[index - 1] += 1;
    }else{
      studentCount[index - 1] -= 1;
    }
  }else{
    print("Index error!");
  }
}

void main(){
  List<int> studentCount = List.generate(10, (i) => Random().nextInt(30));
  print(studentCount);

  updateStudent(studentCount: studentCount, index: 3, flag: true);
  print(studentCount);
}