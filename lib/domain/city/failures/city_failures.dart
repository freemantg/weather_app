import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_failures.freezed.dart';

@freezed
class CityFailure with _$CityFailure {
  const factory CityFailure.serverError() = _ServerError;
  const factory CityFailure.networkError() = _NetworkError;
  const factory CityFailure.authorizationError() = _AuthorizationError;
  const factory CityFailure.unexpectedError() = _UnexpectedError;
}
