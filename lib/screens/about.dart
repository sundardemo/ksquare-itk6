import 'package:flutter/material.dart';

import '../custom_widgets/custom_drawer.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});

  List _ads = [
    {
      'title': 'iphone for sale',
      'price': 12000,
      'images': [
        'http://google.com/image.png',
        'http://google.com/image.png',
        'http://google.com/image.png',
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(child: Text("About")),
    );
  }
}
