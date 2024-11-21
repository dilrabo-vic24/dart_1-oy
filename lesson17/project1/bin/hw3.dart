import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchUsers() async{
  final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
  final response = await http.get(url);

  return jsonDecode(response.body);
}

Future<Map<String, dynamic>> fetchRandomJoke() async{
  final response = await http.get(Uri.parse("https://official-joke-api.appspot.com/random_joke"));

  return jsonDecode(response.body);
}

void main(List<String> args) async{
  final results = await Future.wait([
    fetchUsers(),
    fetchRandomJoke(),
  ]);

  List<dynamic> users = results[0] as List<dynamic>;
  Map<String, dynamic> jokes = results[1] as Map<String, dynamic>;

  for (var user in users) {
    print('Name: ${user['name']}, Email: ${user['email']}');
  }
  print(jokes);
}