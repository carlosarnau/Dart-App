import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
        child: Image.asset(
          'assets/1.jpg',
        ),
      ),
    );
  }
}
