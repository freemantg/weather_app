// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationTimeMs: (json['generationtime_ms'] as num).toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'] as int,
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      currentWeather: CurrentWeather.fromJson(
          json['current_weather'] as Map<String, dynamic>),
      hourlyUnits:
          HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      hourly: Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationTimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'current_weather': instance.currentWeather.toJson(),
      'hourly_units': instance.hourlyUnits.toJson(),
      'hourly': instance.hourly.toJson(),
    };

_$_CurrentWeather _$$_CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeather(
      temperature: (json['temperature'] as num).toDouble(),
      windSpeed: (json['windspeed'] as num).toDouble(),
      windDirection: (json['winddirection'] as num).toDouble(),
      weatherCode: json['weathercode'] as int,
      isDay: json['is_day'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$_CurrentWeatherToJson(_$_CurrentWeather instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'windspeed': instance.windSpeed,
      'winddirection': instance.windDirection,
      'weathercode': instance.weatherCode,
      'is_day': instance.isDay,
      'time': instance.time,
    };

_$_Hourly _$$_HourlyFromJson(Map<String, dynamic> json) => _$_Hourly(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2M: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      relativehumidity2M: (json['relativehumidity_2m'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      dewpoint2M: (json['dewpoint_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      apparentTemperature: (json['apparent_temperature'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
      precipitation: (json['precipitation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weatherCode:
          (json['weathercode'] as List<dynamic>).map((e) => e as int).toList(),
      cloudCover:
          (json['cloudcover'] as List<dynamic>).map((e) => e as int).toList(),
      visibility: (json['visibility'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windSpeed10M: (json['windspeed_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windDirection10M: (json['winddirection_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windGusts10M: (json['windgusts_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      uvIndex: (json['uv_index'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_HourlyToJson(_$_Hourly instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'relativehumidity_2m': instance.relativehumidity2M,
      'dewpoint_2m': instance.dewpoint2M,
      'apparent_temperature': instance.apparentTemperature,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'weathercode': instance.weatherCode,
      'cloudcover': instance.cloudCover,
      'visibility': instance.visibility,
      'windspeed_10m': instance.windSpeed10M,
      'winddirection_10m': instance.windDirection10M,
      'windgusts_10m': instance.windGusts10M,
      'uv_index': instance.uvIndex,
    };

_$_HourlyUnits _$$_HourlyUnitsFromJson(Map<String, dynamic> json) =>
    _$_HourlyUnits(
      time: json['time'] as String,
      temperature2M: json['temperature_2m'] as String,
      relativehumidity2M: json['relativehumidity_2m'] as String,
      dewpoint2M: json['dewpoint_2m'] as String,
      apparentTemperature: json['apparent_temperature'] as String,
      precipitationProbability: json['precipitation_probability'] as String,
      precipitation: json['precipitation'] as String,
      weatherCode: json['weathercode'] as String,
      cloudCover: json['cloudcover'] as String,
      visibility: json['visibility'] as String,
      windSpeed10M: json['windspeed_10m'] as String,
      windDirection10M: json['winddirection_10m'] as String,
      windGusts10M: json['windgusts_10m'] as String,
      uvIndex: json['uv_index'] as String,
    );

Map<String, dynamic> _$$_HourlyUnitsToJson(_$_HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'relativehumidity_2m': instance.relativehumidity2M,
      'dewpoint_2m': instance.dewpoint2M,
      'apparent_temperature': instance.apparentTemperature,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'weathercode': instance.weatherCode,
      'cloudcover': instance.cloudCover,
      'visibility': instance.visibility,
      'windspeed_10m': instance.windSpeed10M,
      'winddirection_10m': instance.windDirection10M,
      'windgusts_10m': instance.windGusts10M,
      'uv_index': instance.uvIndex,
    };
