import 'dart:convert';

import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  // String name;
  // int year;
  dynamic data;
  ResultScreen({
    super.key,
    // required this.name,
    // required this.year,
    required this.data,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int calculateAge(int birthYear) {
    return 2022 - birthYear;
  }

  @override
  Widget build(BuildContext context) {
    //var args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Age Result"),
      ),
      body: Column(
        children: [
          Text("Hi name ${widget.data['name']}"),
          Text("Your age is: ${calculateAge(widget.data['year'])}"),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"),
          )
        ],
      ),
    );
  }
}
