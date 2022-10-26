import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputExample extends StatefulWidget {
  const InputExample({super.key});

  @override
  State<InputExample> createState() => _InputExampleState();
}

class _InputExampleState extends State<InputExample> {
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _mobileCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();
  bool _isTermsAccepted = false;
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text("Forms"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 8),
              TextFormField(
                controller: _nameCtrl,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This is required ";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Hi",
                  prefixIcon: Icon(Icons.account_box),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      print("search");
                    },
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _emailCtrl,
              ),
              SizedBox(height: 8),
              TextField(
                controller: _mobileCtrl,
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _passwordCtrl,
                obscureText: true,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This is required ";
                  }
                  if (value.length < 6) {
                    return "Password must be 6 char";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Checkbox(
                      value: _isTermsAccepted,
                      onChanged: (val) {
                        print(val);
                        setState(() {
                          _isTermsAccepted = val!;
                        });
                      }),
                  Text("Accept Terms")
                ],
              ),
              SizedBox(
                child: ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print(_nameCtrl.text);
                      print(_emailCtrl.text);
                      print(_mobileCtrl.text);
                      print(_passwordCtrl.text);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
