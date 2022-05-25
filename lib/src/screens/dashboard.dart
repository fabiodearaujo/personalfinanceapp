// create a dashboard screen that display hello and a button to logout

// ignore_for_file: no_logic_in_create_state, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';
import 'package:personalfinanceapp/src/screens/login.dart';

class Dashboard extends StatefulWidget {
  final String token;
  const Dashboard( {
    Key? key, required this.token,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Finance - Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Token : ${widget.token}'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
