import 'package:flutter/material.dart';
import 'package:sole_market_project/models/sneaker_class.dart';

class ProductScreen extends StatelessWidget {
  final Sneaker product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(product.thumbnail),
          Text(product.shoeName),
          Text(product.retailPrice),
          Text(product.description),
        ],
      )
    );
  
  }
}