import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

var email, token, pwd;

void setToken(String body) {
  token = body;
}

Future<String> authenticate(String email, String pwd) async {
  final response = await http.post(
    Uri.parse('https://localhost:5220/api/Authentications/Authenticate'),
    body: jsonEncode(<String, String>{
      'login': email,
      'password': pwd,
    }),
  );
  if (response.statusCode == 200) {
    setToken(response.body);
    return response.body;
  } else {
    throw Exception('Failed to authenticate user.');
  }
}
