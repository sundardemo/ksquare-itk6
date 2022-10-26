import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String name;
  double price;
  String imageUrl;
  String secondName;

  ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.secondName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(secondName),
                Text(price.toString()),
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
