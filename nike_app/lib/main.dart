import 'package:flutter/material.dart';
import 'package:pet_adoption/model/shoe.dart';
import 'package:pet_adoption/screens/shoe_screen.dart';

void main() {
  runApp(const NikeApp());
}

class NikeApp extends StatelessWidget {
  const NikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShoeScreen(
        shoe: Shoe(
          type: "Sneakers",
          imageUrl: 'https://files.pauek.info/flutter/pet.jpg',
          name: "NIKE AIR MAX",
        ),
      ),
    );
  }
}
