void main(){
  // print("Enter a = ");
  // String? aStr = stdin.readLineSync(); 

  // print("Enter b = ");
  // String? bStr = stdin.readLineSync(); 

  // int a = int.parse(aStr!);
  // int b = int.parse(bStr!);  

  // if (a > b){
  //   print("a son katta");
  // }else if(a < b){
  //   print("b son katta");
  // }else {
  //   print("Sonlar teng");
  // }
  // int oyRaqami = 5;

  // switch(oyRaqami){
  //   case 1:
  //     print("Yanvar");
  //     break;
  //   case 2:
  //     print("Fevral");
  //     break;
  //   case 3:
  //     print("Mart");
  //     break;
  //   case 4:
  //     print("Aprel");
  //     break;
  //   case 5:
  //     print("May");
  //     break;
  //   default:
  //     print("Xato!");
  // }

  // int a = 54;

  // if (a % 2 == 0){
  //   print("Juft");
  // }else{
  //   print("Toq");
  //  }
  // print((a % 2 == 0)? "Juft son": "Toq son");
  //print(fact(6));

}

// int fact(int n){
//   if (n == 0){
//     return 1;
//   }else
//     return fact(n - 1)*n;
//   }

bool isAcronym(List<String> words, String s) {
    String myWord = "";

    for(int i = 0; i < words.length; i++){
        myWord += words[i][0];
    }

    return (myWord == s)? true : false;
  }
