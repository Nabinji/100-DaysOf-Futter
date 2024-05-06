// ignore_for_file: avoid_print

import 'package:api_integration/Emploee%20Data/user_model.dart';
import 'package:http/http.dart' as http;

userItems() async {
  Uri url = Uri.parse("https://dummyjson.com/users");
  var res = await http.get(url);
  try {
    if (res.statusCode == 200) {
      var data = userModelFromJson(res.body);
      return data.users;
    } else {
      print("Error occured");
    }
  } catch (e) {
    print(e.toString());
  }
}
