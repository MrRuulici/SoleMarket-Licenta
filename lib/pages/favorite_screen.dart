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
      backgroundColor: Colors.grey.shade300,
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
           //return SneakerCard(shoeName: "Yeezy", cookTime: "30", rating: "10", thumbnailUrl: "https://images.stockx.com/images/adidas-Yeezy-Slide-Slate-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1673938237");
        }
      },
      // floatingActionButton: FloatingActionButton(
      //   onPressed: fetchUsers,
      //   ),
    )
    );
  }
}