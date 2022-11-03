import 'package:flutter/material.dart';
import 'package:pet_adoption/model/shoe.dart';
import 'package:pet_adoption/widgets/big_button.dart';
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
              _space(17),
              _pad(const _Header()),
              _space(16),
              const _AboutSection(),
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
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;
  const _SectionTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: paddingSize),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _AboutSection extends StatelessWidget {
  const _AboutSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const _SectionTitle(text: "About"),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingSize),
          child: Text(
            context.watch<Shoe>().description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              height: 1.3,
            ),
          ),
        )
      ],
    );
  }
}
