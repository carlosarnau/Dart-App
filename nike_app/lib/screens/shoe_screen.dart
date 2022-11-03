import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pet_adoption/model/shoe.dart';
import 'package:pet_adoption/widgets/big_button.dart';
import 'package:pet_adoption/widgets/custom_back_button.dart';
import 'package:provider/provider.dart';

class ShoeScreen extends StatelessWidget {
  final Shoe shoe;
  const ShoeScreen({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Provider.value(
      value: shoe,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: const Color.fromARGB(255, 35, 38, 47),
                height: 105,
                width: screenSize.width,
                child: const BigButton(text: "Add to Card"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
