import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ipapico_flutter/src/data/model/ipapi.dart';
import 'package:ipapico_flutter/src/data/repository/ipapi_repository.dart';

part 'ipapi_state.dart';

class IpApiCubit extends Cubit<IpApiState> {
  IpApiCubit() : super(const IpApiState()) {
    loadIpApi();
  }

  void loadIpApi() async {
    emit(state.copyWith(status: IpApiStatus.loading));
    try {
      final data = await IpApiRepository.getIpApiData();

      if (data != null) {
        final ipapi = IpApiResponse.fromJson(data);
        emit(state.copyWith(status: IpApiStatus.success, data: ipapi));
      }
    } catch (e) {
      emit(state.copyWith(status: IpApiStatus.error));
      log(e.toString());
    }
  }
}
