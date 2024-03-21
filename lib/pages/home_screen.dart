import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sole_market_project/data/sneakers.dart';
import 'package:sole_market_project/pages/favorite_screen.dart';
import 'package:sole_market_project/widgets/sneaker_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  
  /// List of sneakers
  final List<Map<String, dynamic>> sneakers = sneakersData;

  /// Widget for the Carousel and text above it
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Categories',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildCategoryItem('Sneakers', Icons.sports_basketball),
                        _buildCategoryItem('Clothing', Icons.work),
                        _buildCategoryItem('Other', Icons.devices_other),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favorites',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FavoriteScreen()),
                            );
                          },
                          child: const Text(
                            'See all >>',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  CarouselSlider.builder(
                    itemCount: sneakers.where((sneaker) => sneaker['favorite'] == true).length,
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      if (sneakers[index]['favorite'] == true) {
                        // return SneakerCard(shoeName: "Yeezy", cookTime: "30", rating: "10", thumbnailUrl: "https://images.stockx.com/images/adidas-Yeezy-Slide-Slate-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1673938237");
                      }
                      return SizedBox.shrink();
                    },
                    options: CarouselOptions(
                      height: 500,
                      autoPlay: true,
                      viewportFraction: 0.8,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Most Popular',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FavoriteScreen()),
                            );
                          },
                          child: const Text(
                            'See all >>',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        Widget _buildCategoryItem(String title, IconData icon) {
          return Column(
            children: [
              Icon(icon, size: 40),
              SizedBox(height: 8),
              Text(title, style: TextStyle(fontSize: 16)),
            ],
          );
        }
      }
        // child: Column(
        //   children: [
        //     const SizedBox(height: 50),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           const Column(
        //             children: [
        //               Text(
        //                 'Favorites',
        //                 style: TextStyle(fontSize: 20),
        //               )
        //             ],
        //           ),
        //           Column(
        //             children: [
        //               GestureDetector(
        //                 onTap: () {
        //                   Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: (context) => FavoriteScreen()),
        //                   );
        //                 },
        //                 child: const Text(
        //                   'See all >>',
        //                   style: TextStyle(fontSize: 20),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),

        //     const SizedBox(height: 10),
            
        //     /// Carousel Slider for Favorites
        //     CarouselSlider.builder(
        //       itemCount: sneakers.where((sneaker) => sneaker['favorite'] == true).length,
        //       itemBuilder: (BuildContext context, int index, int realIndex) {
        //         if (sneakers[index]['favorite'] == true) {
        //          // return SneakerCard(shoeName: "Yeezy", cookTime: "30", rating: "10", thumbnailUrl: "https://images.stockx.com/images/adidas-Yeezy-Slide-Slate-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&trim=color&q=90&dpr=2&updated_at=1673938237");
        //         } return const SizedBox.shrink();
        //       },
        //       options: CarouselOptions(
        //         height: 500,
        //         autoPlay: true,
        //         viewportFraction: 0.8,
        //         aspectRatio: 16 / 9,
        //         autoPlayCurve: Curves.fastOutSlowIn,
        //         enableInfiniteScroll: true,
        //         autoPlayAnimationDuration: const Duration(milliseconds: 800),
        //       ),
        //     ),
        //   ],
        // ),
    //   ),
    // );
  // }
// }
