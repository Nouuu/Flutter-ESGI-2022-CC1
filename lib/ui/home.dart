import 'package:flutter/material.dart';
import 'package:pringle_selector/ui/footer.dart';
import 'package:pringle_selector/ui/header.dart';

class Home extends StatefulWidget {
  final String title;

  Home({
    super.key,
    required this.title,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Header(),
          Footer(),
        ],
      )),
    );
  }
}
