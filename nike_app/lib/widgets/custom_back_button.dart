import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 13, top: 46),
        child: Icon(
          Icons.arrow_back_rounded,
          size: 27,
          color: Color.fromARGB(255, 35, 38, 47),
        ),
      ),
    );
  }
}
