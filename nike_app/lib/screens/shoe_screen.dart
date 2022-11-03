import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pet_adoption/model/shoe.dart';
import 'package:pet_adoption/widgets/big_button.dart';
import 'package:pet_adoption/widgets/custom_back_button.dart';
import 'package:pet_adoption/widgets/info_section.dart';
import 'package:provider/provider.dart';

class ShoeScreen extends StatelessWidget {
  final Shoe shoe;
  const ShoeScreen({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const double photoHeight = 410;
    return Provider.value(
      value: shoe,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: photoHeight,
                width: screenSize.width,
                // Photo place
              ),
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: photoHeight,
                      width: screenSize.width,
                    ),
                    const InfoSection(),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: CustomBackButton(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: const Color.fromARGB(255, 35, 38, 47),
                height: 81,
                width: screenSize.width,
                child: const BigButton(text: "Add to Card"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
