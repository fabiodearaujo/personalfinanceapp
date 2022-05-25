// ignore_for_file: file_names
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> signUpUser(String email, String pass) async {
  var url = Uri.parse('https://pfinanceapi.herokuapp.com/users/create');

  Map data = {'email': email, 'password': pass};
  //encode Map to JSON
  var body = json.encode(data);

  var response = await http.post(url,
      headers: {"Content-Type": "application/json"}, body: body);
  print("${response.statusCode}");
  print("${response.body}");
  int check = response.statusCode;
  String resp = response.body;
  if (check == 200) {
    String test = 'Success';
    return test;
  }

  return resp;
}
