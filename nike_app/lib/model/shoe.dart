class Aspect {
  final String name;
  final double percent;
  Aspect(this.name, this.percent);
}

class Shoe {
  final String name, imageUrl, breed, address, description;
  final List<Aspect> aspects;

  const Shoe({
    required this.name,
    required this.imageUrl,
    required this.breed,
    required this.address,
    required this.description,
    this.aspects = const [],
  });
}
