import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pet_adoption/model/pet.dart';
import 'package:pet_adoption/widgets/big_button.dart';
import 'package:pet_adoption/widgets/custom_back_button.dart';
import 'package:pet_adoption/widgets/dot_row.dart';
import 'package:pet_adoption/widgets/info_section.dart';
import 'package:pet_adoption/widgets/photo_section.dart';
import 'package:provider/provider.dart';

class PetScreen extends StatelessWidget {
  final Pet pet;
  const PetScreen({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const double photoHeight = 350;
    return Provider.value(
      value: pet,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: photoHeight + dotRowHeight + infoSectionRadius,
                width: screenSize.width,
                child: const PhotoSection(),
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
                padding: const EdgeInsets.all(paddingSize),
                color: Colors.white,
                child: const BigButton(text: "Adopt"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
