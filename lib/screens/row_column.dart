import 'package:flutter/material.dart';

class RowColumnExample extends StatelessWidget {
  const RowColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          color: Colors.white,
          height: 400,
          width: 300,
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("images/logo_green.png"),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Person Name"),
                          SizedBox(
                            height: 4,
                          ),
                          Text("5 mins ago"),
                        ]),
                  ),
                ),
                Container(
                  child: Icon(Icons.more_vert),
                )
              ]),
            ),
            Expanded(
              child: Image.asset("images/logo_green.png"),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(children: [Icon(Icons.favorite), Text("Like")]),
                  ),
                  Container(
                    child: Row(children: [Icon(Icons.chat), Text("comment")]),
                  ),
                  Container(
                    child: Row(children: [Icon(Icons.share), Text("share")]),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
