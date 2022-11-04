import 'package:flutter/material.dart';
import 'package:pet_adoption/model/shoe.dart';
import 'package:pet_adoption/widgets/sizenumbers.dart';
import 'package:pet_adoption/widgets/colors.dart';
import 'package:provider/provider.dart';

const double paddingSize = 24;

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  Widget _pad(Widget child) => Padding(
        padding: const EdgeInsets.fromLTRB(paddingSize, 0, paddingSize, 0),
        child: child,
      );

  SizedBox _space(double h) => SizedBox(height: h);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _space(5),
              _pad(const _Header()),
              _space(35),
              const _SizeSection(),
              _space(20),
              const _ColorSection(),
            ],
          ),
        ),
      ],
    );
  }
}

class _Container extends StatelessWidget {
  final Widget child;
  const _Container({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.watch<Shoe>().type,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              context.watch<Shoe>().name,
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SizeSection extends StatelessWidget {
  const _SizeSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SingleChildScrollView(
          child: SizeNumbers(
            text: '1',
          ),
        )
      ],
    );
  }
}

class _ColorSection extends StatelessWidget {
  const _ColorSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SingleChildScrollView(
          child: ShoeColors(
            text: '1',
          ),
        )
      ],
    );
  }
}
