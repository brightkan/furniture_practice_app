import 'dart:convert';
import 'package:furniture/models/Product.dart';
import 'package:http/http.dart' as http;


// Fetch our products from the web service

Future<List<Product>> fetchProducts() async {
  const String apiUrl = "https://60a9192d20a6410017306b5f.mockapi.io/api/v1/products";
  final response = await http.get(apiUrl);
  if (response.statusCode ==  200){
    // If the server did return a response 200 OK
    // then parse the json
    List<Product> products = (json.decode(response.body) as List)
        .map((data)=> Product.fromJson(data)).toList();

    return products;

  } else {
    // If the server fails
    // Throw an exception
    throw Exception("Failed to load");
  }
}

