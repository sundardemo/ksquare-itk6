import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfirstapp/navigation/result.dart';

class AgeCalculatorScreen extends StatefulWidget {
  const AgeCalculatorScreen({super.key});

  @override
  State<AgeCalculatorScreen> createState() => _AgeCalculatorScreenState();
}

class _AgeCalculatorScreenState extends State<AgeCalculatorScreen> {
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _yearCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Form"),
      ),
      body: Column(children: [
        TextField(
          controller: _nameCtrl,
        ),
        TextField(
          controller: _yearCtrl,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/result', arguments: {
              'name': _nameCtrl.text,
              'year': int.parse(_yearCtrl.text)
            });
            // Navigator.pushReplacementNamed(context, '/result', arguments: {
            //   'name': _nameCtrl.text,
            //   'year': int.parse(_yearCtrl.text)
            // });
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ResultScreen(
            //       name: _nameCtrl.text,
            //       year: int.parse(_yearCtrl.text),
            //     ),
            //   ),
            // );
          },
          child: Text("Calculate My Age"),
        )
      ]),
    );
  }
}
