extension ParolValidator on String {
  bool isValidPassword() {
    if(this.length >= 8){
      bool hasNumber = this.contains(RegExp(r'\d'));
      bool hasSpecialChar = this.contains(RegExp(r'[!@#\$%\^&\*]'));
      return hasNumber && hasSpecialChar;
    }else{
      return false;
    }
  }
}

void main(List<String> args) {
  String parol1 = 'Strong@123';
  String parol2 = 'reg43%';
  print(parol1.isValidPassword());
  print(parol2.isValidPassword());
}
