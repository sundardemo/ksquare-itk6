import 'package:flutter/material.dart';

class PopUpMenuExample extends StatefulWidget {
  const PopUpMenuExample({super.key});

  @override
  State<PopUpMenuExample> createState() => _PopUpMenuExampleState();
}

class _PopUpMenuExampleState extends State<PopUpMenuExample> {
  var dropDownValue = 'banana';
  var popupValue = 'apple';
  List _fruits = ['apple', 'orange', 'banana'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Example"),
        actions: [
          PopupMenuButton(
            onSelected: (selected) {
              setState(() {
                popupValue = selected.toString();
              });
            },
            itemBuilder: (c) => _fruits.map((e) {
              return PopupMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
          )
        ],
      ),
      body: Column(children: [
        Text("DropValue: $dropDownValue"),
        Text("DropValue: $popupValue"),
        TextButton(
            onPressed: () async {
              var pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2030));
              if (pickedDate != null) {
                print(pickedDate);
              }
            },
            child: Text("Pick Date")),
        DropdownButton(
            value: dropDownValue,
            items:
                // [
                //   DropdownMenuItem(child: Text("Apple")),
                //    DropdownMenuItem(child: Text("orange")),
                //     DropdownMenuItem(child: Text("banana")),
                // ]

                _fruits.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            onChanged: (selectedValue) {
              setState(() {
                dropDownValue = selectedValue.toString();
              });
            })
      ]),
    );
  }
}
