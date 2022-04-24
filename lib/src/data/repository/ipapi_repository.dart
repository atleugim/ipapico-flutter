import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

class IpApiRepository {
  static Future<Map<String, dynamic>?> getIpApiData() async {
    try {
      final url = Uri.parse('https://ipapi.co/json/');
      final client = HttpClient();
      final request = await client.getUrl(url);

      final response = await request.close();

      final contentAsString = await utf8.decodeStream(response);
      return Map<String, dynamic>.from(json.decode(contentAsString));
    } catch (err) {
      log(err.toString());
      return Future.error(err);
    }
  }
}
