// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class SmallPhotos2 extends StatelessWidget {
  const SmallPhotos2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 7),
          SizedBox(
            height: 58,
            width: 58,
            child: Center(
              child: Image.asset(
                'assets/2.jpg',
              ),
            ),
          ),
          const SizedBox(height: 7),
          Container(
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 255, 0, 157),
                width: 2,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/1.jpg',
              ),
            ),
          ),
          const SizedBox(height: 7),
          SizedBox(
            height: 58,
            width: 58,
            child: Center(
              child: Image.asset(
                'assets/3.jpg',
              ),
            ),
          ),
          const SizedBox(height: 7),
          SizedBox(
            height: 58,
            width: 58,
            child: Center(
              child: Image.asset(
                'assets/4.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
