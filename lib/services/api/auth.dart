import 'package:green_app/constants.dart';
import 'package:green_app/services/Models/login.dart';
import 'package:green_app/services/Models/registration.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth {
  Future<Registration> userRegistration(
      name, email, password, passwordConfirmation, type) async {
    var url = Uri.parse(server + "/api/register");
    final response = await http.post(url, body: {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'type': type,
    });
    if (response.statusCode == 200) {
      return Registration.fromJson(json.decode(response.body));
    } else if (response.statusCode == 404) {
      var error = json.decode(response.body);
      throw Exception(error['message']);
    } else {
      throw Exception("Server is down");
    }
  }

  Future<Login> login(email, password) async {
    var url = Uri.parse(server + "/api/login");
    final response = await http.post(url, body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      return Login.fromJson(json.decode(response.body));
    } else if (response.statusCode == 404) {
      var error = json.decode(response.body);
      throw Exception(error['message']);
    } else {
      throw Exception("Server is down");
    }
  }
}
