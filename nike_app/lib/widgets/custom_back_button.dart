import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          widthFactor: 2.0,
          heightFactor: 2.0,
          child: Icon(
            Icons.arrow_back_rounded,
            size: 45,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
