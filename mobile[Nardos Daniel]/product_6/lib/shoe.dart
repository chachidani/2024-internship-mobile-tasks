class Shoe {
  final String name;
  final double price;
  final String image;
  final String size;

  Shoe(
      {required this.name,
      required this.image,
      required this.price,
      required this.size});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Shoe &&
        other.image == image &&
        other.name == name &&
        other.price == price &&
        other.size == size;
  }

  @override
  int get hashCode {
    return image.hashCode ^ name.hashCode ^ price.hashCode ^ size.hashCode;
  }
}
