/*
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

var email, token;
final String url = "http://192.168.77.197:8080/api/products";

List<Products> parseProd(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var products = list.map((e) => Products.fromJson(e)).toList();
  return products;
}

void setToken(String body) {
  token = body;
}

Future<String> authenticate(String email) async {
  final response = await http.post(
    Uri.parse('http://192.168.77.197:8080/signup'),
    body: jsonEncode(<String, String>{
      'userMail': email,
    }),
  );
  if (response.statusCode == 200) {
    setToken(response.body);
    return response.body;
  } else {
    throw Exception('Failed to authenticate user.');
  }
}

Future<List<Products>> fetchProducts() async {
  Map<String, String> header = {"api-key": token};
  final http.Response response =
      await http.get(Uri.parse(url), headers: header);

  if (response.statusCode == 200) {
    return compute(parseProd, response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
*/