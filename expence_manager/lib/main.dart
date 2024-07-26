import 'package:flutter/material.dart';
import 'startscreen1.dart';
import 'registerpage2.dart';
import 'loginpage3.dart';
import 'homescreen4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: StartScreen(),
      //home: RegisterPage(),
      //home: LoginPage(),
      //home: HomeScreen(),
    );
  }
}
