import 'dart:convert';
import 'package:furniture/models/Category.dart';
import 'package:http/http.dart' as http;

// Fetch our Categories from the web service
Future<List<Category>> fetchCategories() async {
  const String apiUrl = "";

  final response = await http.get(apiUrl);

  if (response.statusCode ==  200){
    // If the server did return a response 200 OK
    // then parse the json
    List<Category> categories = (json.decode(response.body) as List)
        .map((data)=> Category.fromJson(data)).toList();
    return categories;

  } else {
    // If the server fails
    // Throw an exception
    throw Exception("Failed to load");
  }
}