// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'big_button.dart';

class BottomBar extends StatelessWidget {
  final String text;
  const BottomBar({required this.text});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 35, 38, 47),
            height: 81,
            width: screenSize.width,
            child: const BigButton(text: "Add to Card"),
          ),
        ],
      ),
    );
  }
}
