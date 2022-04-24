import 'dart:developer';

import 'package:dio/dio.dart';

class IpApiRepository {
  static final _dio = Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "X-Developed-By": "Miguel Vega | (atleugim)",
      },
      validateStatus: (status) {
        return status != null && status < 500;
      },
      baseUrl: 'https://ipapi.co',
    ),
  );

  static Future<Map<String, dynamic>?> getIpApiData() async {
    try {
      final response = await _dio.get('/json');
      return Map<String, dynamic>.from(response.data);
    } catch (err) {
      log(err.toString());
      return Future.error(err);
    }
  }
}
