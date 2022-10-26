import 'package:flutter/material.dart';

class ProductCardStateful extends StatefulWidget {
  String name;
  double price;
  String imageUrl;
  String? secondName;

  ProductCardStateful({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.secondName,
  });

  @override
  State<ProductCardStateful> createState() => _ProductCardStatefulState();
}

class _ProductCardStatefulState extends State<ProductCardStateful> {
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
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name),
                Text(widget.secondName ?? '23123'),
                Text(widget.price.toString()),
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
