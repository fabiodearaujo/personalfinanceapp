// ignore_for_file: file_names

import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// write a post request that sends a form-data body with username and password
// to the server.
//
// The server should respond with a JSON confirming the user was created.

Future<String> authUser(String username, String password) async {
  var response;

  try {
    response = await http.post(
      Uri.parse('https://pfinanceapi.herokuapp.com/users/auth'),
      body: {
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      String body = response.body;
      print(body);
      var storage = const FlutterSecureStorage();
      storage.write(key: 'token', value: body);
      return body;
    }
  } on Exception catch (e) {
    print(e);
  }
  return response.body;
}
