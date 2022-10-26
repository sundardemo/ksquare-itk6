import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            color: Colors.indigo,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.star),
                  Text("Rate this"),
                ]),
              ),
            )
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       // Image.asset("images/logo_green.png"),
            //       // Text("App Name"),
            //       // Text("App Description"),
            //       // ElevatedButton(onPressed: () {}, child: Text("Click"))
            //       // Container(
            //       //   height: 50,
            //       //   width: 50,
            //       //   color: Colors.yellow,
            //       // ),
            //       Container(
            //         height: 50,
            //         width: 50,
            //         color: Colors.green,
            //       ),
            //       Container(
            //         height: 50,
            //         width: 50,
            //         color: Colors.blue,
            //       ),
            //       Container(
            //         height: 50,
            //         width: 50,
            //         color: Colors.red,
            //       )
            //       // Container(
            //       //   color: Colors.red,
            //       //   height: 200,
            //       //   width: 200,
            //       //   child: Container(
            //       //     margin: EdgeInsets.only(top: 20, bottom: 2, right: 4, left: 8),
            //       //     color: Colors.green,
            //       //     child: Text("t"),
            //       //   ),
            //       // ),
            //       // Container(
            //       //   color: Colors.yellow,
            //       //   width: 300,
            //       //   padding: EdgeInsets.all(20),
            //       //   child: SizedBox(
            //       //     width: double.infinity,
            //       //     height: 80,
            //       //     child: ElevatedButton(
            //       //       child: Text("Hi"),
            //       //       onPressed: () {},
            //       //     ),
            //       //   ),
            //       // ),
            //       // SizedBox(height: 100),
            //       // // SizedBox(
            //       // //   height: 100,
            //       // //   width: double.infinity,
            //       // //   child: ElevatedButton(
            //       // //       onPressed: () {},
            //       // //       child: Column(
            //       // //         children: [
            //       // //           Icon(Icons.account_box),
            //       // //           Text("Hello"),
            //       // //         ],
            //       // //       )),
            //       // // ),
            //       // SizedBox(height: 8),
            //       // OutlinedButton(onPressed: () {}, child: Text("Hello")),
            //       // SizedBox(height: 8),
            //       // TextButton(onPressed: () {}, child: Text("Hello")),
            //       // SizedBox(height: 8),
            //       // IconButton(onPressed: () {}, icon: Icon(Icons.star)),
            //       // Image.network(
            //       //   "https://images.pexels.com/photos/247502/pexels-photo-247502.jpeg?cs=srgb&dl=pexels-pixabay-247502.jpg&fm=jpg",
            //       //   height: 200,
            //       //   width: 200,
            //       // ),
            //       // GestureDetector(
            //       //   onTap: () {
            //       //     print("Single Click");
            //       //   },
            //       //   onDoubleTap: () {
            //       //     print("Double tap");
            //       //   },
            //       //   child: Image.asset(
            //       //     "images/logo_green.png",
            //       //     height: 100,
            //       //     width: 100,
            //       //   ),
            //       // ),
            //       // Icon(
            //       //   Icons.all_inbox,
            //       //   color: Colors.deepOrange,
            //       //   size: 40,
            //       // ),
            //       // Text(
            //       //   "Hello",
            //       //   style: TextStyle(
            //       //     fontSize: 40,
            //       //     fontWeight: FontWeight.w900,
            //       //     color: Color(0xff04BD64),
            //       //   ),
            //       // ),
            //     ]),
            ),
      ),
    ),
  );
}
