import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<dynamic> getRequestWithoutModel() async {
    try {
      Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final model = jsonDecode(response.body);
        return model;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
// to used postmen in your vscode first add the extension of postmen in your vs code then  signup your account 
// then you can easily used. 