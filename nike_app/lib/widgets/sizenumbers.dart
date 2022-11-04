// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class SizeNumbers extends StatelessWidget {
  final String text;
  const SizeNumbers({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 15),
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
                "Size",
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 136, 141),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 46),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 208, 209, 211),
                width: 1,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Center(
              child: Text(
                "1,5",
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 136, 141),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 9),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 208, 209, 211),
                width: 1,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Center(
              child: Text(
                "2",
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 136, 141),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 9),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 208, 209, 211),
                width: 1,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Center(
              child: Text(
                "2.5",
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 136, 141),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 9),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child: const Center(
              child: Text(
                "3",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(width: 9),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 208, 209, 211),
                width: 1,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Center(
              child: Text(
                "4",
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 136, 141),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
