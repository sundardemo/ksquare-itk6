import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          color: Colors.yellow,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.network(
                  "https://images.unsplash.com/photo-1613141354534-3d8f4a1dcee4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwYW5pbWFsfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.yellow.withOpacity(0.5),
                  child: Row(children: [
                    Image.asset(
                      "images/logo_green.png",
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [Text("sdfsd"), Text("sdfdsf")]),
                    )
                  ]),
                ),
              )
              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: Text(
              //     "Hello",
              //     style: TextStyle(color: Colors.orange, fontSize: 20),
              //   ),
              // ),
              // Align(
              //     alignment: Alignment.topRight,
              //     child: Padding(
              //         padding: EdgeInsets.all(8), child: Icon(Icons.favorite))),
              // Positioned(
              //     // top: 180,
              //     // left: 250,
              //     bottom: 10,
              //     right: 40,
              //     child: Text(
              //       "POS",
              //       style: TextStyle(color: Colors.orange, fontSize: 20),
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}
