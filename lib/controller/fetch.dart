import 'dart:convert';
import 'package:flutter_application_1/controller/req.dart';
import 'package:http/http.dart' as http;

Future<List<Welcome>> fetchWelcome() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Welcome>((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
