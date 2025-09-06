import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiService {

  Future<void> get(final String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      log('Response data: ${response.body}', name: 'GET ApiService');
    } else {
      log('Request failed with status: ${response.statusCode}.', name: 'GET ApiService');
    }
  }

  Future<void> post(final String url, final Map<String, String> body) async {
    final response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      log('Response data: ${response.body}', name: 'POST ApiService');
    } else {
      log('Request failed with status: ${response.statusCode}.', name: 'POST ApiService');
    }
  }

  Future<void> put(final String url, final Map<String, String> body) async {
    final response = await http.put(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      log('Response data: ${response.body}', name: 'PUT ApiService');
    } else {
      log('Request failed with status: ${response.statusCode}.', name: 'PUT ApiService');
    }
  }
  
  Future<void> patch(final String url, final Map<String, String> body) async {
    final response = await http.patch(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      log('Response data: ${response.body}', name: 'PATCH ApiService');
    } else {
      log('Request failed with status: ${response.statusCode}.', name: 'PATCH ApiService');
    }
  }
}