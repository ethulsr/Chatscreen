import 'package:flutter/material.dart';
import 'package:flutter_project_1/HomeScreen.dart';
import 'package:flutter_project_1/ScreenOne.dart';
import 'package:flutter_project_1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ScreenOne(),
      routes: {
        'ScreenOne': (ctx) {
          return ScreenOne();
        },
        'LogIn': (ctx) {
          return LogIn();
        },
        'HomeScreen': (ctx) {
          return const HomeScreen();
        }
      },
    );
  }
}
