import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myfirstapp/http_example/service.dart';
import 'package:myfirstapp/http_example/user_model.dart';
import 'constants.dart' as constants;

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List _users = [];
  bool _isLoading = false;

  // _fetchUserData() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  // http.get(Uri.parse("https://reqres.in/api/users?page=2")).then((res) {
  //   print(res.body);
  //   var respAsJSON = jsonDecode(res.body);
  //   print(respAsJSON['data'].length);
  //   setState(() {
  //     _users = respAsJSON['data'];
  //     _isLoading = false;
  //   });
  // }).catchError((e) {
  //   print(e);
  //   setState(() {
  //     _isLoading = false;
  //   });
  // });
  // var url = Uri.parse("https://reqre.in/api/users?page=2");
  // try {
  //   var res = await http.get(url);
  //   var resAsJSON = jsonDecode(res.body);
  //   setState(() {
  //     _users = resAsJSON['data'];
  //     _isLoading = false;
  //   });
  // } catch (e) {
  //   print(e);
  //   setState(() {
  //     _isLoading = false;
  //   });
  // }

  //}

  // _fetchUserData() {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Users"),
          actions: [
            IconButton(
              onPressed: () {
                //_fetchUserData();
                UserService().fetchUserData();
              },
              icon: Icon(Icons.refresh),
            )
          ],
        ),
        body: FutureBuilder(
          future: UserService().fetchUserData(),
          builder: ((context, snapshot) {
            print(snapshot);
            if (snapshot.hasData) {
              List<User> users = snapshot.data!;
              print(users);
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(users[index].avatar),
                    ),
                    title: Text(users[index].first_name),
                    subtitle: Text(users[index].email),
                  );
                }),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text("Something wrong"),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
        )
        // _isLoading
        //     ? Center(
        //         child: CircularProgressIndicator(),
        //       )
        //     : ListView.builder(
        //         itemCount: _users.length,
        //         itemBuilder: ((context, index) {
        //           return ListTile(
        //             leading: CircleAvatar(
        //               backgroundImage: NetworkImage("${_users[index]['avatar']}"),
        //             ),
        //             title: Text("${_users[index]['first_name']}"),
        //             subtitle: Text("${_users[index]['email']}"),
        //           );
        //         }),
        //       ),
        );
  }
}
