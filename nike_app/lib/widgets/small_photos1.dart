// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:pet_adoption/widgets/small_photos2.dart';

class SmallPhotos1 extends StatelessWidget {
  const SmallPhotos1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 15, top: 177),
        child: Container(
          height: 273,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color.fromARGB(255, 247, 247, 247),
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: const Center(
            child: SmallPhotos2(),
          ),
        ),
      ),
    );
  }
}
