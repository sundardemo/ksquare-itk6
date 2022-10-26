import 'package:flutter/material.dart';

import '../custom_widgets/custom_drawer.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  String _gender = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 'male',
                groupValue: _gender,
                onChanged: (val) {
                  setState(() {
                    _gender = val!;
                  });
                },
              ),
              GestureDetector(
                child: Text("Male"),
                onTap: (() {
                  setState(() {
                    _gender = 'male';
                  });
                }),
              )
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'female',
                groupValue: _gender,
                onChanged: (val) {
                  setState(() {
                    _gender = val!;
                  });
                },
              ),
              GestureDetector(
                child: Text("Female"),
                onTap: (() {
                  setState(() {
                    _gender = 'female';
                  });
                }),
              )
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'other',
                groupValue: _gender,
                onChanged: (val) {
                  setState(() {
                    _gender = val!;
                  });
                },
              ),
              GestureDetector(
                child: Text("Other"),
                onTap: (() {
                  setState(() {
                    _gender = 'other';
                  });
                }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
