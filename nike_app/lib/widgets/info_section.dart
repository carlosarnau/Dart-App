import 'package:flutter/material.dart';
import 'package:pet_adoption/model/pet.dart';
import 'package:pet_adoption/widgets/big_button.dart';
import 'package:pet_adoption/widgets/dot_row.dart';
import 'package:provider/provider.dart';

const double paddingSize = 24;
const double infoSectionRadius = 40;

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
        const DotRow(numDots: 4, selected: 1),
        _Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _space(paddingSize),
              _pad(const _Header()),
              _pad(const _Location()),
              _space(12),
              const _GeneralSection(),
              _space(16),
              const _AboutSection(),
              const SizedBox(height: bigButtonHeight + paddingSize * 2),
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(infoSectionRadius),
          topRight: Radius.circular(infoSectionRadius),
        ),
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
              context.watch<Pet>().name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              context.watch<Pet>().breed,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          mini: true,
          child: Icon(Icons.favorite, color: Colors.red[700]),
        )
      ],
    );
  }
}

class _Location extends StatelessWidget {
  const _Location();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(Icons.location_pin, color: Colors.brown[300]),
          const SizedBox(width: 12),
          Text(context.watch<Pet>().address),
        ],
      ),
    );
  }
}

class _GeneralSection extends StatelessWidget {
  const _GeneralSection();

  @override
  Widget build(BuildContext context) {
    final pet = context.watch<Pet>();
    final colors = [Colors.deepOrange, Colors.blue, Colors.purple, Colors.green, Colors.indigo];
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const _SectionTitle(text: "General"),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: paddingSize),
              for (int i = 0; i < pet.aspects.length; i++) ...[
                if (i > 0) const SizedBox(width: 10),
                _AspectWidget(
                  aspect: pet.aspects[i],
                  color: colors[i % colors.length],
                ),
              ],
              const SizedBox(width: paddingSize),
            ],
          ),
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

class _AspectWidget extends StatelessWidget {
  final Aspect aspect;
  final MaterialColor color;
  const _AspectWidget({
    required this.aspect,
    required this.color,
  });

  String capitalizeFirst(String s) => "${s[0].toUpperCase()}${s.substring(1)}";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: color[50]!,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            capitalizeFirst(aspect.name),
            style: TextStyle(
              color: Colors.blueGrey[800]!,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 9),
          SizedBox(
            height: 46,
            width: 46,
            child: _Percent(
              percent: aspect.percent,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class _Percent extends StatelessWidget {
  final MaterialColor color;
  final double percent;
  const _Percent({
    required this.percent,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 46,
          height: 46,
          child: CircularProgressIndicator(
            value: percent,
            color: color[400],
            backgroundColor: color[100],
            strokeWidth: 2.5,
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            "${(percent * 100).toInt()}%",
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
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
            context.watch<Pet>().description,
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
