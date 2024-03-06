import 'package:flutter/material.dart';
import 'package:sole_market_project/models/sneaker_api.dart';
import 'package:sole_market_project/models/sneaker_class.dart';
import 'package:sole_market_project/pages/product_screen.dart';
import 'package:sole_market_project/widgets/sneaker_card.dart';
import 'package:sole_market_project/widgets/user_service.dart';
import 'package:provider/provider.dart';
class SneakerListScreen extends StatefulWidget {
  const SneakerListScreen({super.key, Function()? loadUser});

  @override
  State<SneakerListScreen> createState() => _SneakerListScreenState();
}

class _SneakerListScreenState extends State<SneakerListScreen> {

   loadUser() async {
    final results = await UserService().getUser();
    print(results.length);
    results.forEach((element) { print(element.email);});
   }

  List<Sneaker>? _sneakers;
  bool _isLoading = true;

    @override
   void initState() {
      super.initState();
      fetchSneakers();
   }

   Future<void> fetchSneakers() async {
     _sneakers = await SneakerApi().fetchSneakers();
     setState(() {
       _isLoading = false;
     });
   }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      // Sneaker cards in a list view
      body: _isLoading
      ? Center(child: CircularProgressIndicator())
      : GridView.builder(
        itemCount: _sneakers?.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final sneaker = _sneakers![index];
            return GestureDetector(
              onTap: () => Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => ProductScreen(product: sneaker),
              ),
              ),
              child: Padding(
                 padding: const EdgeInsets.symmetric(
                      vertical: 4.0, // Increase the top and bottom padding
                      horizontal: 8.0,
                    ),
                child: SneakerCard(
                shoeName: _sneakers![index].shoeName,
                retailPrice: _sneakers![index].retailPrice,
                description: _sneakers![index].description,
                thumbnail: _sneakers![index].thumbnail,
                            ),
              ),
            );
          },
        ),
      );
  }
}
