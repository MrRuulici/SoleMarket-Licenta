import 'package:flutter/material.dart';
import 'package:sole_market_project/data/sneakers.dart';

class SneakerCard extends StatefulWidget {
  final Map<String, dynamic> sneaker;

  SneakerCard({super.key, required this.sneaker});

  final List<Map<String, dynamic>> sneakers = sneakersData;
  //final bool isFavorite = false;

  @override
  _SneakerCardState createState() => _SneakerCardState();
}

class _SneakerCardState extends State<SneakerCard> {
  
  ///Code for Sneaker Card design and functionality
  @override
  Widget build(BuildContext context) {
    bool isFavorite = widget.sneaker['favorite'];
    return Card(
      color: Colors.grey.shade200,
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            widget.sneaker['picture'],
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.sneaker['name'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.sneaker['favorite'] = !widget.sneaker['favorite'];
                        });
                      },
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  widget.sneaker['description'],
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  'SKU: ${widget.sneaker['sku']}',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}