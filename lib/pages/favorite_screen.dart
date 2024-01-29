import 'package:flutter/material.dart';
import 'package:sole_market_project/data/sneakers.dart';
import 'package:sole_market_project/widgets/sneaker_card.dart';

class FavoriteScreen extends StatelessWidget {
FavoriteScreen({super.key});

final List<Map<String, dynamic>> sneakers = sneakersData;
//final List<bool> favorites = List<bool>.filled(sneakersData.length, growable: true);  will do this later

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // back button
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
       body: ListView.builder(
      itemCount: sneakers.length,
      itemBuilder: (context, index) {
        if (sneakers[index]['favorite'] == true) {
          return SneakerCard(sneaker: sneakers[index]); //Only favourite = true sneakers will be shown
        }
      },
      // floatingActionButton: FloatingActionButton(
      //   onPressed: fetchUsers,
      //   ),
    )
    );
  }
}