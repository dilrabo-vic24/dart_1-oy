void main(){
  int num = 10;
  print(factorial(num));
}

  int factorial(int num){
    if(num <= 0){
      return 1;
    }
    return factorial(num - 1) * num;
  }