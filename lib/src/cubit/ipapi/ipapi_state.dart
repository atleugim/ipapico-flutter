part of 'ipapi_cubit.dart';

enum IpApiStatus {
  initial,
  loading,
  success,
  error,
}

class IpApiState extends Equatable {
  final IpApiStatus status;
  final IpApiResponse? data;

  const IpApiState({
    this.status = IpApiStatus.initial,
    this.data,
  });

  IpApiState copyWith({
    IpApiStatus? status,
    IpApiResponse? data,
  }) {
    return IpApiState(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [status, data];

  @override
  String toString() => 'IpApiState(status: $status, data: $data)';
}
