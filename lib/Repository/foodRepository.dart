import 'dart:convert';

import 'package:http/http.dart' as http;

class FoodRepository {
  var baseURL = "https://nutribuddy.herokuapp.com/api/foods";

  Future<List<dynamic>> fecthFoodCollection() async {
    var response = await http.get(Uri.parse(baseURL));
    return json.decode(response.body);
  }
}
// class FoodRepository {
//   final baseUrl = 'https://nutribuddy.herokuapp.com/api/foods';

//   Future<FoodModel> getFoodFoodModel() async {
//     final response = await http.get(Uri.parse(baseUrl));
//     if (response.statusCode == 200) {
//       // Iterable iterable = jsonDecode(response.body);
//       // List<FoodModel> FoodModel = iterable.map((e) => FoodModel.fromJson(e)).toList();
//       return FoodModel.fromJson(jsonDecode(response.body));
//       // return [
//       //   for (final item in jsonDecode(response.body)) FoodModel.fromJson(item)
//       // ];
//     } else {
//       throw Exception("Failed to Load FoodModel");
//     }
//   }
// }
