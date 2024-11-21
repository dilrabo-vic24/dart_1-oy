import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  Future<void> getUser() async {
      final result = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
      List<dynamic> users = jsonDecode(result.body);

      for(Map user in users){
        print("ID:  ${user['id']}  NAME:    ${user['name'] }  EMAIL:    ${user['email']}");
      }
  }

  getUser();
}
