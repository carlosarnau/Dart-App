import 'package:flutter/material.dart';
import 'package:pet_adoption/model/shoe.dart';
import 'package:pet_adoption/widgets/bottom_bar.dart';
import 'package:pet_adoption/widgets/like_button.dart';
import 'package:pet_adoption/widgets/share_button.dart';
import 'package:pet_adoption/widgets/info_section.dart';
import 'package:pet_adoption/widgets/photo_section.dart';
import 'package:pet_adoption/widgets/custom_back_button.dart';
import 'package:provider/provider.dart';

class ShoeScreen extends StatelessWidget {
  final Shoe shoe;
  const ShoeScreen({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const double photoHeight = 400;
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
                child: const Images(),
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
              alignment: Alignment.topRight,
              child: ShareButton(),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: LikeButton(),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: CustomBackButton(),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(
                text: '1',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
