import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sole_market_project/models/sneaker_class.dart';

class MostPopularApi{

   Future<List<Sneaker>> fetchMostPopular() async {
    var uri = Uri.https('sneaker-database-stockx.p.rapidapi.com', '/mostpopular', {'limit': '10'});
    
    final response = await http.get(uri, headers: {
      	'X-RapidAPI-Key': 'e4bbd4b678msh26f0b4935482889p1105f1jsn5e4c3fc4ec91',
	      'X-RapidAPI-Host': 'sneaker-database-stockx.p.rapidapi.com'
  });

 final responseData = jsonDecode(response.body);
  List<dynamic> sneakerList = responseData as List<dynamic>;

    // Now you can iterate over sneakerList and extract individual sneaker details
    List<Sneaker> sneakers = Sneaker.sneakersFromSnapshot(sneakerList);

    return sneakers;

}

}