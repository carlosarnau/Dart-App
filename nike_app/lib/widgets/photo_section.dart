import 'package:flutter/material.dart';
import 'package:pet_adoption/model/pet.dart';
import 'package:provider/provider.dart';

class PhotoSection extends StatelessWidget {
  const PhotoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      context.watch<Pet>().imageUrl,
      fit: BoxFit.cover,
    );
  }
}
