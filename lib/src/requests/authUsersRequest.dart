import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<String> authUser(String email, String pass) async {
  var url = Uri.parse('https://pfinanceapi.herokuapp.com/auth/');

  var response = await http.post(url,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      }, body : {
        'username' : email,
        'password' : pass
      });
  print("${response.statusCode}");
  print("${response.body}");
  var resp = json.decode(response.body);
  String token = resp['access_token'];
  return token;
}






// Future<String> authUser(String user, String pass) async {
//   var url = Uri.parse('https://pfinanceapi.herokuapp.com/users/create');
//
//   Map data = {'email': user, 'password': pass};
//   //encode Map to JSON
//   var body = json.encode(data);
//
//   try {
//     var response = await http.post(url,
//       body: {
//         u
//       },
//       headers: {
//         'Content-Type': 'application/x-www-form-urlencoded',
//       },
//     );
//
//     var data = json.decode(response.body);
//     print('Data: ${data['access_token']}');
//     print("${data.statusCode}");
//     print("${data.body}");
//     if (response.statusCode == 200) {
//       String body = "Success";
//       return body;
//     }
//   } on Exception catch (e) {
//     print(e);
//   }
//   return data['access_token'];
// }
