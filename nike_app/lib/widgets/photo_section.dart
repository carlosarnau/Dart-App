import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.fromLTRB(4, 90, 4, 40),
        child: Image.asset(
          'assets/1.jpg',
        ),
      ),
    );
  }
}
