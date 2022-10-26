import 'package:flutter/material.dart';
import 'package:myfirstapp/custom_widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(child: Text("Home")),
    );
  }
}
