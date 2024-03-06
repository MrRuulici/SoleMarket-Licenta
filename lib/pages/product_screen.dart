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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(product.thumbnail),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                text: product.shoeName,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Retail Price: " + product.retailPrice,
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              product.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      );
    
  
  }
}