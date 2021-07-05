import 'package:green_app/constants.dart';
import 'package:green_app/services/Models/posts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsDetails {
  Future<Posts> getAllPosts(type) async {
    var url = Uri.parse(server + "/api/posts");
    final response = await http.post(url, body: {
      'flowerType': type.toString(),
    });
    if (response.statusCode == 200) {
      return Posts.fromJson(json.decode(response.body));
    } else if (response.statusCode == 400) {
      throw Exception("no");
    } else {
      throw Exception("Server is down");
    }
  }

  Future<Posts> getPostsByLocation(type, city) async {
    var url = Uri.parse(server + "/api/posts-by-location");
    final response = await http.post(url, body: {
      'flowerType': type.toString().toLowerCase(),
      'city': city.toString().toLowerCase(),
    });
    if (response.statusCode == 200) {
      return Posts.fromJson(json.decode(response.body));
    } else if (response.statusCode == 400) {
      throw Exception("no");
    } else {
      throw Exception("Server is down");
    }
  }

  Future<Posts> getRecomendedFlowers(type, city) async {
    var url = Uri.parse(server + "/api/posts-by-location");
    final response = await http.post(url, body: {
      'flowerType': type.toString().toLowerCase(),
      'city': city.toString().toLowerCase(),
    });
    if (response.statusCode == 200) {
      return Posts.fromJson(json.decode(response.body));
    } else if (response.statusCode == 400) {
      throw Exception("no");
    } else {
      throw Exception("Server is down");
    }
  }
}
