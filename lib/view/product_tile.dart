import 'package:flutter/material.dart';
import 'package:own_api/models/product.dart';

class Product_tile extends StatelessWidget {
  Product product;
  Product_tile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Text(product.name),
        Text(product.id.toString()),
        Text(product.brand),
        Text(product.image_link),
        Text(product.price)],
      ),
    );
  }
}