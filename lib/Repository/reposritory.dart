import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nutribuddy_app/Model/model_food.dart';

class Repository {
  var baseURL = "https://nutribuddy.herokuapp.com/api/foods";

  // Future<FoodModel> fetchData() async {
  //   final response = await http.get(Uri.parse(baseURL));
  //   if (response.statusCode == 200) {
  //     print(response.body);
  //     return FoodModel.fromJson(jsonDecode(response.body));
  //   } else {
  //     throw Exception("Failed");
  //   }
  // }
  Future<List<FoodModel>> fetchData() async {
    final response = await http.get(Uri.parse(baseURL));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => FoodModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed");
    }
  }
}
