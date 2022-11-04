// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class ShoeColors extends StatelessWidget {
  final String text;
  const ShoeColors({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 23),
          Container(
            height: 39,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Center(
              child: Text(
                "Color",
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 136, 141),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 34),
          Container(
            height: 39,
            width: 39,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 34, 34, 34),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 39,
            width: 39,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 106, 110),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 39,
            width: 39,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 10,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
