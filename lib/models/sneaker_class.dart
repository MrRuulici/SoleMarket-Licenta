class Sneaker {
  final String shoeName;
  final String retailPrice;
  final String description;
  final String thumbnail;
  final String stockxLink;
  final String goatLink;
  final String flightClubLink;

  const Sneaker({
    required this.shoeName,
    required this.retailPrice,
    required this.description,
    required this.thumbnail,
    required this.stockxLink,
    required this.goatLink,
    required this.flightClubLink,
  });

   factory Sneaker.fromJson(Map<String, dynamic> json) {
    return Sneaker(
      shoeName: json['shoeName'] as String,
      retailPrice: json['retailPrice'].toString(),
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String,
      stockxLink: json['resellLinks']['stockX'] as String,
      goatLink: json['resellLinks']['goat'] as String,
      flightClubLink: json['resellLinks']['flightClub'] as String,
    );
  }

  static List<Sneaker> sneakersFromSnapshot(List<dynamic> snapshot) {
    return snapshot.map((data) {
      return Sneaker.fromJson(data as Map<String, dynamic>);
    }).toList();
  }


}