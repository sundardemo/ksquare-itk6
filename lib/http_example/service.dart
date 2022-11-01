import 'dart:convert';

import 'package:http/http.dart' as http;
import 'constants.dart' as constants;

class UserService {
  Future<List> fetchUserData() async {
    var url = Uri.parse("${constants.apiURL}/api/users?page=2");
    try {
      var res = await http.get(url);
      var resAsJSON = jsonDecode(res.body);
      var userData = resAsJSON['data'];
      return userData;
    } catch (e) {
      return [];
    }
  }
}
