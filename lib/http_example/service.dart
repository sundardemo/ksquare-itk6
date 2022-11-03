import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myfirstapp/http_example/user_model.dart';
import 'constants.dart' as constants;

class UserService {
  Future<List<User>> fetchUserData() async {
    var url = Uri.parse("${constants.apiURL}/api/users?page=2");
    List<User> users = [];
    try {
      var res = await http.get(url);
      var resAsJSON = jsonDecode(res.body);
      var userData = resAsJSON['data'];
      users = userData.map<User>((user) => User.fromJson(user)).toList();
      return users;
    } catch (e) {
      print("Error $e");
      return users;
    }
  }
}
