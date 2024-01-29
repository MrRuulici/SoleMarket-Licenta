import 'package:flutter/material.dart';
import 'package:sole_market_project/data/sneakers.dart';
import 'package:sole_market_project/widgets/sneaker_card.dart';
//import 'package:http/http.dart' as http;

class SneakerListScreen extends StatelessWidget {
  SneakerListScreen({super.key});

   final List<Map<String, dynamic>> sneakers = sneakersData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sneakers.length,
        itemBuilder: (context, index) {
          return SneakerCard(sneaker: sneakers[index]);
      // floatingActionButton: FloatingActionButton(
      //   onPressed: fetchUsers,
      //   ),
        },
    ),
    );
  }

  // void fetchUsers() {
  //   print('fetchUsers called');
  // }
}
