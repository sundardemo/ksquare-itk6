import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});
  List _fruits = [
    {'title': 'Apple', 'price': 100, 'color': 'red'},
    {'title': 'Orange', 'price': 200, 'color': 'orange'},
    {'title': 'Banana', 'price': 160, 'color': 'yello'},
    {'title': 'Mango', 'price': 130, 'color': 'green'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: ListView.builder(
        itemCount: _fruits.length,
        itemBuilder: ((context, index) {
          return ListTile(
            onTap: () {
              context.go(
                '/page2',
                extra: _fruits[index],
              );
            },
            title: Text(_fruits[index]['title']),
            subtitle: Text(_fruits[index]['price'].toString()),
          );
        }),
      ),
    );
  }
}
