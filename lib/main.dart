import 'package:flutter/material.dart';
import 'package:pringle_selector/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pringles selector',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
          bodyText2: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
      home:const SafeArea(
        child: Home(title: 'Pringles selector'),
      ),
    );
  }
}
