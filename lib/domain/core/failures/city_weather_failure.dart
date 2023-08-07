import 'package:freezed_annotation/freezed_annotation.dart';

import '../../city/city.dart';
import '../../location/location.dart';
import '../../weather/weather.dart';

part 'city_weather_failure.freezed.dart';

@freezed
class CityWeatherFailure with _$CityWeatherFailure {
  const factory CityWeatherFailure.city(CityFailure failure) = CityFailureCase;
  const factory CityWeatherFailure.weather(WeatherFailure failure) =
      WeatherFailureCase;
  const factory CityWeatherFailure.location(LocationFailure failure) =
      LocationFailureCase;
}
