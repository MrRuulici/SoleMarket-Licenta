class Sneaker {
  final String shoeName;
  final String retailPrice;
  final String description;
  final String thumbnail;

  const Sneaker({
    required this.shoeName,
    required this.retailPrice,
    required this.description,
    required this.thumbnail,
  });

   factory Sneaker.fromJson(Map<String, dynamic> json) {
    return Sneaker(
      shoeName: json['shoeName'] as String,
      retailPrice: json['retailPrice'].toString(),
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String,
    );
  }

  static List<Sneaker> sneakersFromSnapshot(List<dynamic> snapshot) {
    return snapshot.map((data) {
      return Sneaker.fromJson(data as Map<String, dynamic>);
    }).toList();
  }


}