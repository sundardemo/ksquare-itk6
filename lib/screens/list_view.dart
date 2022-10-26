import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfirstapp/custom_widgets/product_card.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});
  String dummyText = "sdafa";

  List names = [
    {
      'title': 'Cat',
      'secondName': 'kitty',
      'price': 12000,
      'imageUrl':
          'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YW5pbWFsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'Bear',
      'price': 19000,
      'imageUrl':
          'https://images.unsplash.com/photo-1589656966895-2f33e7653819?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWFsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'Tiger',
      'price': 32000,
      'imageUrl':
          'https://images.unsplash.com/photo-1591824438708-ce405f36ba3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YW5pbWFsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'Fox',
      'price': 11000,
      'secondName': 'Foxxxy',
      'imageUrl':
          'https://images.unsplash.com/photo-1474511320723-9a56873867b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGFuaW1hbHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'Cat',
      'secondName': 'kitty',
      'price': 12000,
      'imageUrl':
          'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YW5pbWFsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'Bear',
      'price': 19000,
      'imageUrl':
          'https://images.unsplash.com/photo-1589656966895-2f33e7653819?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWFsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'Tiger',
      'price': 32000,
      'imageUrl':
          'https://images.unsplash.com/photo-1591824438708-ce405f36ba3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YW5pbWFsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'title': 'Fox',
      'price': 11000,
      'secondName': 'Foxxxy',
      'imageUrl':
          'https://images.unsplash.com/photo-1474511320723-9a56873867b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGFuaW1hbHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("Goto Home"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("About"),
            subtitle: Text("Goto Home"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Contact"),
            subtitle: Text("Goto Home"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ]),
      ),
      appBar: AppBar(),
      body:
          //     GridView.builder(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 4,
          //     mainAxisSpacing: 4,
          //     childAspectRatio: 0.85,
          //   ),
          //   itemCount: names.length,
          //   itemBuilder: (context, index) {
          //     double price = names[index]['price'] * 100;
          //     return ProductCard(
          //         name: names[index]['title'],
          //         price: price,
          //         imageUrl: names[index]['imageUrl'],
          //         secondName: names[index]['secondName'] ?? 'EEE');
          //   },
          // )
          Column(
        children: [
          Text("Hello"),
          Container(
            height: 500,
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: ((context, index) {
                return Container(
                  height: 300,
                  margin: EdgeInsets.all(8),
                  color: Colors.indigo,
                  child: Text(names[index]['title']),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
