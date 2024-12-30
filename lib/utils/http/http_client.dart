import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CusHttpHelper {
  static const String _baseUrl = 'test url';


  // helper GET method http
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // helper POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body:json.encode(data)
    );
    return _handleResponse(response);
  }

  // Helper method to PUT http
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type':'application/json'},
      body:json.encode(data),
    );
    return _handleResponse(response);
  }

  // http helper for DELETE method
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //handling HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    } else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}