import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  const ContainerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
        alignment: Alignment.topLeft,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.orange,
          child: Text("Hi"),
        ),
      ),
    );
  }
}
