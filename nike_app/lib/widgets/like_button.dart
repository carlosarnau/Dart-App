import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 26, top: 46),
        child: Icon(
          Icons.favorite_border,
          size: 27,
          color: Color.fromARGB(255, 35, 38, 47),
        ),
      ),
    );
  }
}
