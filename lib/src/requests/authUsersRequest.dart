// ignore_for_file: file_names

import 'dart:convert';

import 'package:http/http.dart' as http;

var response;

Future<String> authUser(String user, String pass) async {
  try {
    response = await http.post(
      Uri.parse('https://pfinanceapi.herokuapp.com/auth'),
      body: {
        'username': user,
        'password': pass,
      },
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    var data = json.decode(response.body);
    print('Data: ${data['access_token']}');
    if (response.statusCode == 200) {
      String body = "Success";
      return body;
    }
  } on Exception catch (e) {
    print(e);
  }
  var resp = json.decode(response.body);
  return resp['access_token'];
}
