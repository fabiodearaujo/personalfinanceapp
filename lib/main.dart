//Import library to get content on the screen
import 'package:flutter/material.dart';
import 'package:personalfinanceapp/src/screens/login.dart';

// Define a 'main' function to run when our app starts
void main() {
  // Call the runApp method to start our Flutter app
  var app = MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ), // Define the home widget
    home: const Login(),
  );

  // Run the app
  runApp(app);
}
