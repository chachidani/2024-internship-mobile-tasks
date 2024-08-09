class Shoe {
  final String name;
  final double price;
  final String image;
  final String size;
  final String id;
  final String description;
  final String category;

  Shoe(
      {required this.name,
      required this.image,
      required this.price,
      required this.category,
      required this.id,
      required this.description,
      required this.size});

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is Shoe &&
  //       other.image == image &&
  //       other.name == name &&
  //       other.price == price &&
  //       other.size == size;
  // }

  // @override
  // int get hashCode {
  //   return image.hashCode ^ name.hashCode ^ price.hashCode ^ size.hashCode;
  // }
}
