import 'dart:developer';

import 'data/model/ipapi.dart';
import 'data/repository/ipapi_repository.dart';

class IpApiData {
  static final IpApiData _singleton = IpApiData._internal();

  factory IpApiData() {
    return _singleton;
  }

  IpApiData._internal();

  Future<IpApiResponse?> getIpApiData() async =>
      await IpApiRepository.getIpApiData().then((response) {
        if (response != null) {
          return IpApiResponse.fromJson(response);
        } else {
          return null;
        }
      }).catchError((err) {
        log(err.toString());
        return null;
      });
}
