void main(){
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  names.asMap().entries.forEach((name){
    print("Index: ${name.key}, Value: ${name.value}");
  });
  print(names);
}