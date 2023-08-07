import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_failures.freezed.dart';

@freezed
class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.apiError(String message) = ApiError;
  const factory WeatherFailure.serverError() = ServerError;
  const factory WeatherFailure.unexpectedError() = UnexpectedError;
}
