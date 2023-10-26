import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

var email, token, pwd;

void setToken(String body) {
  token = body;
}

Future<String> authenticate(String email, String pwd) async {
  try {
    final response = await http.post(
      Uri.parse('https://localhost:5220/api/Authentications/Authenticate'),
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      },
      body: jsonEncode({
        'login': email,
        'password': pwd,
      }),
    );
    print(response);
    if (response.statusCode == 200) {
      setToken(response.body);
      return response.body;
    } else {
      throw Exception('Failed to authenticate user.');
    }
  } catch (e) {
    print(e);
    throw (Exception(e));
  }
}
