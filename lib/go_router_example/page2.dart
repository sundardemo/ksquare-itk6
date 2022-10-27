import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Map data = {};
  Page2({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Column(
        children: [
          Text(data['title']),
          Text(data['price'].toString()),
          Text(data['color']),
          TextButton(
            onPressed: () {},
            child: Text("Goto Page 1"),
          ),
        ],
      ),
    );
  }
}
