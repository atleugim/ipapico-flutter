import 'dart:developer';

import 'data/model/ipapi.dart';
import 'data/repository/ipapi_repository.dart';

class IpApiData {
  static final IpApiData _singleton = IpApiData._internal();

  factory IpApiData() {
    return _singleton;
  }

  IpApiData._internal();

  static Future<IpApiResponse> getIpApiData() async {
    try {
      final response = await IpApiRepository.getIpApiData();

      if (response != null) {
        return IpApiResponse.fromJson(response);
      } else {
        return Future.error('No data');
      }
    } catch (err) {
      log(err.toString());
      return Future.error(err);
    }
  }
}
