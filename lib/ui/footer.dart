import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.black,
      child: const Center(
        child: Text(
          '© 2020 Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
