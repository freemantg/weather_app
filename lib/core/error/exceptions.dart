import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class RemoteException with _$RemoteException {
  const factory RemoteException.server({String? message}) = ServerException;
  const factory RemoteException.network({String? message}) = NetworkException;
  const factory RemoteException.authorization({String? message}) =
      AuthorizationException;
  const factory RemoteException.unexpected({String? message}) =
      UnexpectedException;
}

@freezed
class LocationException with _$LocationException {
  const factory LocationException.permissionDenied({String? message}) =
      PermissionDenied;
  const factory LocationException.serviceDisabled({String? message}) =
      ServiceDisabled;
  const factory LocationException.permissionDeniedForever({String? message}) =
      PermissionDeniedForever;
}

class WeatherApiException implements Exception {
  final String reason;
  WeatherApiException(this.reason);

  @override
  String toString() => 'Weather API Error: $reason';
}
