import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfirstapp/screens/about.dart';
import 'package:myfirstapp/screens/contact.dart';
import 'package:myfirstapp/screens/home.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          subtitle: Text("Goto Home"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          }),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("About"),
          subtitle: Text("Goto Home"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutScreen(),
              ),
            );
          }),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Contact"),
          subtitle: Text("Goto Home"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContactScreen(),
              ),
            );
          }),
        ),
      ]),
    );
  }
}
