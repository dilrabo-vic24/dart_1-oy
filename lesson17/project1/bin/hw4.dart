import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> checkUserIfMale() async {
  final response = await http.get(Uri.parse('https://randomuser.me/api/?results=5000'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final users = data['results'] as List<dynamic>;

    final maleUsers = [];
    final femaleUsers = [];
    
    users.forEach((user){
      if(user['gender'] == 'male'){
        maleUsers.add(user['name']['first']);
      }else{
        femaleUsers.add(user['name']['first']);
      }
    });

    return [maleUsers, femaleUsers];
  } else {
    throw Exception("Foydalanuvchilarni yuklab bo'lmadi.");
  }
}

Future<void> main(List<String> args) async {

   final users = await checkUserIfMale();

  print('Erkak foydalanuvchilar (${users[0].length}):\n${users[0]})');

  print('\nAyol foydalanuvchilar (${users[1].length}):\n${users[1]})');
}
