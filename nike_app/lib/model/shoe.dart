class Aspect {
  final String name;
  final double percent;
  Aspect(this.name, this.percent);
}

class Shoe {
  final String type, imageUrl, name, address, description;
  final List<Aspect> aspects;

  const Shoe({
    required this.type,
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.description,
    this.aspects = const [],
  });
}
