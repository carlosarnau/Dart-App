class Number {
  final String name;
  Number(this.name);
}

class Shoe {
  final String type, imageUrl, name;

  const Shoe({
    required this.type,
    required this.imageUrl,
    required this.name,
  });
  get aspects => null;
}
