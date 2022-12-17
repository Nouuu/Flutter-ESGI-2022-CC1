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
            color: Color(0xFFececec),
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            color: Color(0xFF2b2c2d),
          ),
          bodyText2: TextStyle(
            fontSize: 18.0,
            color: Color(0xFFececec),
          ),
        ),
      ),
      home:const SafeArea(
        child: Home(title: 'Pringles selector'),
      ),
    );
  }
}
