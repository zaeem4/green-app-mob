import 'package:green_app/constants.dart';
import 'package:green_app/services/Models/nurseriesDetail.dart';
import 'package:green_app/services/Models/nurseryStore.dart';
import 'package:green_app/storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NurseryDetails {
  Future<NurseriesDetail> getAllNurseries(city) async {
    var url = Uri.parse(server + "/api/nurseries");
    final response = await http.post(url, body: {
      'city': city,
    });
    if (response.statusCode == 200) {
      return NurseriesDetail.fromJson(json.decode(response.body));
    } else if (response.statusCode == 400) {
      throw Exception("no");
    } else {
      throw Exception("Server is down");
    }
  }

  Future<NurseryStore> getNurseryDetails() async {
    var token = Storage.prefs.getString('token');
    var url = Uri.parse(server + "/api/nursery-details");
    final response = await http.post(url, headers: {
      'Authorization': 'Bearer $token',
    }, body: {});
    if (response.statusCode == 200) {
      print(json.decode(response.body));
      return NurseryStore.fromJson(json.decode(response.body));
    } else if (response.statusCode == 404) {
      throw Exception(json.decode(response.body));
    } else {
      throw Exception("Server is down");
    }
  }
}
