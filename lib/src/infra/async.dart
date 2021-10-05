import 'dart:convert';
import 'package:http/http.dart' as http;

class Async {
  Future<Map> fetch(String url) async {
    var urlParse = Uri.parse(url);
    var response = await http.get(urlParse);
    return jsonDecode(response.body);
  }

  Future<Map> post(String url, http.BaseRequest request) async {
    var urlParse = Uri.parse(url);
    var response = await http.post(urlParse, body: request);
    return jsonDecode(response.body);
  }
}
