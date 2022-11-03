import 'package:flutter/material.dart';

const double bigButtonHeight = 48;

class BigButton extends StatelessWidget {
  final String text;
  const BigButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bigButtonHeight,
      decoration: BoxDecoration(
        color: Colors.deepOrange[200]!,
        borderRadius: const BorderRadius.all(
          Radius.circular(bigButtonHeight),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
