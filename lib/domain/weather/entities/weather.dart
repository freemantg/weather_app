import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(explicitToJson: true)
  const factory Weather({
    required double latitude,
    required double longitude,
    @JsonKey(name: 'generationtime_ms') required double generationTimeMs,
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    required String timezone,
    @JsonKey(name: 'timezone_abbreviation')
    required String timezoneAbbreviation,
    required double elevation,
    @JsonKey(name: 'current_weather') required CurrentWeather currentWeather,
    @JsonKey(name: 'hourly_units') required HourlyUnits hourlyUnits,
    required Hourly hourly,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class CurrentWeather with _$CurrentWeather {
  @JsonSerializable(explicitToJson: true)
  const factory CurrentWeather({
    required double temperature,
    @JsonKey(name: 'windspeed') required double windSpeed,
    @JsonKey(name: 'winddirection') required double windDirection,
    @JsonKey(name: 'weathercode') required int weatherCode,
    @JsonKey(name: 'is_day') required int isDay,
    required String time,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@freezed
class Hourly with _$Hourly {
  @JsonSerializable(explicitToJson: true)
  const factory Hourly({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature2M,
    @JsonKey(name: 'relativehumidity_2m') required List<int> relativehumidity2M,
    @JsonKey(name: 'dewpoint_2m') required List<double> dewpoint2M,
    @JsonKey(name: 'apparent_temperature')
    required List<double> apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required List<int> precipitationProbability,
    required List<double> precipitation,
    @JsonKey(name:'weathercode') required List<int> weatherCode,
    @JsonKey(name:'cloudcover') required List<int> cloudCover,
    required List<double> visibility,
    @JsonKey(name: 'windspeed_10m') required List<double> windSpeed10M,
    @JsonKey(name: 'winddirection_10m') required List<double> windDirection10M,
    @JsonKey(name: 'windgusts_10m') required List<double> windGusts10M,
    @JsonKey(name: 'uv_index') required List<double> uvIndex,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}

@freezed
class HourlyUnits with _$HourlyUnits {
  const factory HourlyUnits({
    @JsonKey(name: 'time') required String time,
    @JsonKey(name: 'temperature_2m') required String temperature2M,
    @JsonKey(name: 'relativehumidity_2m') required String relativehumidity2M,
    @JsonKey(name: 'dewpoint_2m') required String dewpoint2M,
    @JsonKey(name: 'apparent_temperature') required String apparentTemperature,
    @JsonKey(name: 'precipitation_probability')
    required String precipitationProbability,
    @JsonKey(name: 'precipitation') required String precipitation,
    @JsonKey(name: 'weathercode') required String weatherCode,
    @JsonKey(name: 'cloudcover') required String cloudCover,
    @JsonKey(name: 'visibility') required String visibility,
    @JsonKey(name: 'windspeed_10m') required String windSpeed10M,
    @JsonKey(name: 'winddirection_10m') required String windDirection10M,
    @JsonKey(name: 'windgusts_10m') required String windGusts10M,
    @JsonKey(name: 'uv_index') required String uvIndex,
  }) = _HourlyUnits;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);
}
