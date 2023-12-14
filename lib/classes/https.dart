import 'package:http/http.dart' as http;

class Https {
  final String baseUrl;

  Https({required this.baseUrl});

  Future<http.Response> get(String path, {Map<String, String>? headers}) async {
    final response = await http.get(
      Uri.parse('$baseUrl$path'),
      headers: headers,
    );
    return response;
  }

  Future<http.Response> post(String path,
      {Map<String, String>? headers, dynamic body}) async {
    final response = await http.post(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: body,
    );
    return response;
  }

  Future<http.Response> put(String path,
      {Map<String, String>? headers, dynamic body}) async {
    final response = await http.put(
      Uri.parse('$baseUrl$path'),
      headers: headers,
      body: body,
    );
    return response;
  }

  Future<http.Response> delete(String path,
      {Map<String, String>? headers}) async {
    final response = await http.delete(
      Uri.parse('$baseUrl$path'),
      headers: headers,
    );
    return response;
  }
}
