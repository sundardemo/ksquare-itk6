import 'package:flutter/material.dart';

import '../custom_widgets/custom_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
