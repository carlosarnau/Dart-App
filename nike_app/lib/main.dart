import 'package:flutter/material.dart';
import 'package:pet_adoption/model/pet.dart';
import 'package:pet_adoption/screens/pet_screen.dart';

void main() {
  runApp(const PetAdoptionApp());
}

class PetAdoptionApp extends StatelessWidget {
  const PetAdoptionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PetScreen(
        pet: Pet(
          name: "Marlie",
          imageUrl: 'https://files.pauek.info/flutter/pet.jpg',
          breed: "Dachshund",
          address: "Tompkins Country SPCA",
          description: "Marly is very friendly, tolerant attitude makes him a "
              "fabulous family pet, and his intelligence makes him a "
              "highly capable working dog. Loves kids and can be"
              "alone at home.",
          aspects: [
            Aspect("kindness", 0.8),
            Aspect("activity", 0.78),
            Aspect("health", 0.70),
            Aspect("cleanliness", 0.69),
            Aspect("friendliness", 1.0),
          ],
        ),
      ),
    );
  }
}
