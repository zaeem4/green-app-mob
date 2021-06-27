import 'package:green_app/constants.dart';
import 'package:green_app/services/Models/flowerDetail.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Flower {
  Future<FlowerDetail> getFlowerDetails(type) async {
    var url = Uri.parse(server + "/api/flower-details");
    final response = await http.post(url, body: {
      'type': type,
    });
    if (response.statusCode == 200) {
      return FlowerDetail.fromJson(json.decode(response.body));
    } else if (response.statusCode == 400) {
      throw Exception("no");
    } else {
      throw Exception("Server is down");
    }
  }
}
