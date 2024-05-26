import 'dart:convert';

import 'package:api_integration/Filter/model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<FilterModel?> myFilterList() async {
    Uri url = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        return FilterModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
// the error message shown due to the rating value,
// in some product  rating value in the form of double in some product it's value is iintn  form.