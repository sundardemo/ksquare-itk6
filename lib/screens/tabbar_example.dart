import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfirstapp/screens/about.dart';
import 'package:myfirstapp/screens/contact.dart';
import 'package:myfirstapp/screens/home.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({super.key});

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<Widget> _pages = [
    HomeScreen(),
    AboutScreen(),
    ContactScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "About",
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Contact",
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _pages,
        ));
  }
}
