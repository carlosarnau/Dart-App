import 'package:flutter/material.dart';

const double bigButtonHeight = 48;

class BigButton extends StatelessWidget {
  final String text;
  const BigButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 65,
        width: 170,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 246, 246, 246),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
