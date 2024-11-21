Future<void> getUserName() async{
  await Future.delayed(Duration(seconds: 2));
  print('Ali');
}

Future<void> getUserEmail() async{
  await Future.delayed(Duration(seconds: 3));
  print('ali@example.com');
}

Future<void> getUserLastLogin() async{
  await Future.delayed(Duration(seconds: 1));
  print('${DateTime.now()}');
}


void main(List<String> args) {
  getUserName();
  getUserEmail();
  getUserLastLogin();
}
