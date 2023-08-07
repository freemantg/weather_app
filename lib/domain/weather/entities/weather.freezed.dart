// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'generationtime_ms')
  double get generationTimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation => throw _privateConstructorUsedError;
  double get elevation => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_weather')
  CurrentWeather get currentWeather => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_units')
  HourlyUnits get hourlyUnits => throw _privateConstructorUsedError;
  Hourly get hourly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(name: 'generationtime_ms') double generationTimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      double elevation,
      @JsonKey(name: 'current_weather') CurrentWeather currentWeather,
      @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
      Hourly hourly});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  $HourlyCopyWith<$Res> get hourly;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationTimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentWeather = null,
    Object? hourlyUnits = null,
    Object? hourly = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationTimeMs: null == generationTimeMs
          ? _value.generationTimeMs
          : generationTimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      hourlyUnits: null == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res> get hourlyUnits {
    return $HourlyUnitsCopyWith<$Res>(_value.hourlyUnits, (value) {
      return _then(_value.copyWith(hourlyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res> get hourly {
    return $HourlyCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(name: 'generationtime_ms') double generationTimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      double elevation,
      @JsonKey(name: 'current_weather') CurrentWeather currentWeather,
      @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
      Hourly hourly});

  @override
  $CurrentWeatherCopyWith<$Res> get currentWeather;
  @override
  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  @override
  $HourlyCopyWith<$Res> get hourly;
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationTimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentWeather = null,
    Object? hourlyUnits = null,
    Object? hourly = null,
  }) {
    return _then(_$_Weather(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationTimeMs: null == generationTimeMs
          ? _value.generationTimeMs
          : generationTimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      hourlyUnits: null == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.latitude,
      required this.longitude,
      @JsonKey(name: 'generationtime_ms') required this.generationTimeMs,
      @JsonKey(name: 'utc_offset_seconds') required this.utcOffsetSeconds,
      required this.timezone,
      @JsonKey(name: 'timezone_abbreviation')
      required this.timezoneAbbreviation,
      required this.elevation,
      @JsonKey(name: 'current_weather') required this.currentWeather,
      @JsonKey(name: 'hourly_units') required this.hourlyUnits,
      required this.hourly});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @JsonKey(name: 'generationtime_ms')
  final double generationTimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  final int utcOffsetSeconds;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  final String timezoneAbbreviation;
  @override
  final double elevation;
  @override
  @JsonKey(name: 'current_weather')
  final CurrentWeather currentWeather;
  @override
  @JsonKey(name: 'hourly_units')
  final HourlyUnits hourlyUnits;
  @override
  final Hourly hourly;

  @override
  String toString() {
    return 'Weather(latitude: $latitude, longitude: $longitude, generationTimeMs: $generationTimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentWeather: $currentWeather, hourlyUnits: $hourlyUnits, hourly: $hourly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationTimeMs, generationTimeMs) ||
                other.generationTimeMs == generationTimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationTimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentWeather,
      hourlyUnits,
      hourly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final double latitude,
      required final double longitude,
      @JsonKey(name: 'generationtime_ms')
      required final double generationTimeMs,
      @JsonKey(name: 'utc_offset_seconds') required final int utcOffsetSeconds,
      required final String timezone,
      @JsonKey(name: 'timezone_abbreviation')
      required final String timezoneAbbreviation,
      required final double elevation,
      @JsonKey(name: 'current_weather')
      required final CurrentWeather currentWeather,
      @JsonKey(name: 'hourly_units') required final HourlyUnits hourlyUnits,
      required final Hourly hourly}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(name: 'generationtime_ms')
  double get generationTimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds;
  @override
  String get timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation;
  @override
  double get elevation;
  @override
  @JsonKey(name: 'current_weather')
  CurrentWeather get currentWeather;
  @override
  @JsonKey(name: 'hourly_units')
  HourlyUnits get hourlyUnits;
  @override
  Hourly get hourly;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'windspeed')
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'winddirection')
  double get windDirection => throw _privateConstructorUsedError;
  @JsonKey(name: 'weathercode')
  int get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  int get isDay => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {double temperature,
      @JsonKey(name: 'windspeed') double windSpeed,
      @JsonKey(name: 'winddirection') double windDirection,
      @JsonKey(name: 'weathercode') int weatherCode,
      @JsonKey(name: 'is_day') int isDay,
      String time});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? weatherCode = null,
    Object? isDay = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$_CurrentWeatherCopyWith(
          _$_CurrentWeather value, $Res Function(_$_CurrentWeather) then) =
      __$$_CurrentWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temperature,
      @JsonKey(name: 'windspeed') double windSpeed,
      @JsonKey(name: 'winddirection') double windDirection,
      @JsonKey(name: 'weathercode') int weatherCode,
      @JsonKey(name: 'is_day') int isDay,
      String time});
}

/// @nodoc
class __$$_CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$_CurrentWeather>
    implements _$$_CurrentWeatherCopyWith<$Res> {
  __$$_CurrentWeatherCopyWithImpl(
      _$_CurrentWeather _value, $Res Function(_$_CurrentWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? weatherCode = null,
    Object? isDay = null,
    Object? time = null,
  }) {
    return _then(_$_CurrentWeather(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CurrentWeather implements _CurrentWeather {
  const _$_CurrentWeather(
      {required this.temperature,
      @JsonKey(name: 'windspeed') required this.windSpeed,
      @JsonKey(name: 'winddirection') required this.windDirection,
      @JsonKey(name: 'weathercode') required this.weatherCode,
      @JsonKey(name: 'is_day') required this.isDay,
      required this.time});

  factory _$_CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherFromJson(json);

  @override
  final double temperature;
  @override
  @JsonKey(name: 'windspeed')
  final double windSpeed;
  @override
  @JsonKey(name: 'winddirection')
  final double windDirection;
  @override
  @JsonKey(name: 'weathercode')
  final int weatherCode;
  @override
  @JsonKey(name: 'is_day')
  final int isDay;
  @override
  final String time;

  @override
  String toString() {
    return 'CurrentWeather(temperature: $temperature, windSpeed: $windSpeed, windDirection: $windDirection, weatherCode: $weatherCode, isDay: $isDay, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeather &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature, windSpeed,
      windDirection, weatherCode, isDay, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      __$$_CurrentWeatherCopyWithImpl<_$_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {required final double temperature,
      @JsonKey(name: 'windspeed') required final double windSpeed,
      @JsonKey(name: 'winddirection') required final double windDirection,
      @JsonKey(name: 'weathercode') required final int weatherCode,
      @JsonKey(name: 'is_day') required final int isDay,
      required final String time}) = _$_CurrentWeather;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeather.fromJson;

  @override
  double get temperature;
  @override
  @JsonKey(name: 'windspeed')
  double get windSpeed;
  @override
  @JsonKey(name: 'winddirection')
  double get windDirection;
  @override
  @JsonKey(name: 'weathercode')
  int get weatherCode;
  @override
  @JsonKey(name: 'is_day')
  int get isDay;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return _Hourly.fromJson(json);
}

/// @nodoc
mixin _$Hourly {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'relativehumidity_2m')
  List<int> get relativehumidity2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'dewpoint_2m')
  List<double> get dewpoint2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability => throw _privateConstructorUsedError;
  List<double> get precipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'weathercode')
  List<int> get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloudcover')
  List<int> get cloudCover => throw _privateConstructorUsedError;
  List<double> get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'windspeed_10m')
  List<double> get windSpeed10M => throw _privateConstructorUsedError;
  @JsonKey(name: 'winddirection_10m')
  List<double> get windDirection10M => throw _privateConstructorUsedError;
  @JsonKey(name: 'windgusts_10m')
  List<double> get windGusts10M => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  List<double> get uvIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyCopyWith<Hourly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) then) =
      _$HourlyCopyWithImpl<$Res, Hourly>;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2M,
      @JsonKey(name: 'relativehumidity_2m') List<int> relativehumidity2M,
      @JsonKey(name: 'dewpoint_2m') List<double> dewpoint2M,
      @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
      List<int> precipitationProbability,
      List<double> precipitation,
      @JsonKey(name: 'weathercode') List<int> weatherCode,
      @JsonKey(name: 'cloudcover') List<int> cloudCover,
      List<double> visibility,
      @JsonKey(name: 'windspeed_10m') List<double> windSpeed10M,
      @JsonKey(name: 'winddirection_10m') List<double> windDirection10M,
      @JsonKey(name: 'windgusts_10m') List<double> windGusts10M,
      @JsonKey(name: 'uv_index') List<double> uvIndex});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res, $Val extends Hourly>
    implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? relativehumidity2M = null,
    Object? dewpoint2M = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? cloudCover = null,
    Object? visibility = null,
    Object? windSpeed10M = null,
    Object? windDirection10M = null,
    Object? windGusts10M = null,
    Object? uvIndex = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2M: null == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relativehumidity2M: null == relativehumidity2M
          ? _value.relativehumidity2M
          : relativehumidity2M // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dewpoint2M: null == dewpoint2M
          ? _value.dewpoint2M
          : dewpoint2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparentTemperature: null == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      precipitationProbability: null == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<int>,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cloudCover: null == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as List<int>,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeed10M: null == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windDirection10M: null == windDirection10M
          ? _value.windDirection10M
          : windDirection10M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windGusts10M: null == windGusts10M
          ? _value.windGusts10M
          : windGusts10M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HourlyCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$$_HourlyCopyWith(_$_Hourly value, $Res Function(_$_Hourly) then) =
      __$$_HourlyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2M,
      @JsonKey(name: 'relativehumidity_2m') List<int> relativehumidity2M,
      @JsonKey(name: 'dewpoint_2m') List<double> dewpoint2M,
      @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
      List<int> precipitationProbability,
      List<double> precipitation,
      @JsonKey(name: 'weathercode') List<int> weatherCode,
      @JsonKey(name: 'cloudcover') List<int> cloudCover,
      List<double> visibility,
      @JsonKey(name: 'windspeed_10m') List<double> windSpeed10M,
      @JsonKey(name: 'winddirection_10m') List<double> windDirection10M,
      @JsonKey(name: 'windgusts_10m') List<double> windGusts10M,
      @JsonKey(name: 'uv_index') List<double> uvIndex});
}

/// @nodoc
class __$$_HourlyCopyWithImpl<$Res>
    extends _$HourlyCopyWithImpl<$Res, _$_Hourly>
    implements _$$_HourlyCopyWith<$Res> {
  __$$_HourlyCopyWithImpl(_$_Hourly _value, $Res Function(_$_Hourly) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? relativehumidity2M = null,
    Object? dewpoint2M = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? cloudCover = null,
    Object? visibility = null,
    Object? windSpeed10M = null,
    Object? windDirection10M = null,
    Object? windGusts10M = null,
    Object? uvIndex = null,
  }) {
    return _then(_$_Hourly(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2M: null == temperature2M
          ? _value._temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relativehumidity2M: null == relativehumidity2M
          ? _value._relativehumidity2M
          : relativehumidity2M // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dewpoint2M: null == dewpoint2M
          ? _value._dewpoint2M
          : dewpoint2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparentTemperature: null == apparentTemperature
          ? _value._apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      precipitationProbability: null == precipitationProbability
          ? _value._precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<int>,
      precipitation: null == precipitation
          ? _value._precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cloudCover: null == cloudCover
          ? _value._cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as List<int>,
      visibility: null == visibility
          ? _value._visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeed10M: null == windSpeed10M
          ? _value._windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windDirection10M: null == windDirection10M
          ? _value._windDirection10M
          : windDirection10M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windGusts10M: null == windGusts10M
          ? _value._windGusts10M
          : windGusts10M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      uvIndex: null == uvIndex
          ? _value._uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Hourly implements _Hourly {
  const _$_Hourly(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature2M,
      @JsonKey(name: 'relativehumidity_2m')
      required final List<int> relativehumidity2M,
      @JsonKey(name: 'dewpoint_2m') required final List<double> dewpoint2M,
      @JsonKey(name: 'apparent_temperature')
      required final List<double> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
      required final List<int> precipitationProbability,
      required final List<double> precipitation,
      @JsonKey(name: 'weathercode') required final List<int> weatherCode,
      @JsonKey(name: 'cloudcover') required final List<int> cloudCover,
      required final List<double> visibility,
      @JsonKey(name: 'windspeed_10m') required final List<double> windSpeed10M,
      @JsonKey(name: 'winddirection_10m')
      required final List<double> windDirection10M,
      @JsonKey(name: 'windgusts_10m') required final List<double> windGusts10M,
      @JsonKey(name: 'uv_index') required final List<double> uvIndex})
      : _time = time,
        _temperature2M = temperature2M,
        _relativehumidity2M = relativehumidity2M,
        _dewpoint2M = dewpoint2M,
        _apparentTemperature = apparentTemperature,
        _precipitationProbability = precipitationProbability,
        _precipitation = precipitation,
        _weatherCode = weatherCode,
        _cloudCover = cloudCover,
        _visibility = visibility,
        _windSpeed10M = windSpeed10M,
        _windDirection10M = windDirection10M,
        _windGusts10M = windGusts10M,
        _uvIndex = uvIndex;

  factory _$_Hourly.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature2M;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M {
    if (_temperature2M is EqualUnmodifiableListView) return _temperature2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2M);
  }

  final List<int> _relativehumidity2M;
  @override
  @JsonKey(name: 'relativehumidity_2m')
  List<int> get relativehumidity2M {
    if (_relativehumidity2M is EqualUnmodifiableListView)
      return _relativehumidity2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativehumidity2M);
  }

  final List<double> _dewpoint2M;
  @override
  @JsonKey(name: 'dewpoint_2m')
  List<double> get dewpoint2M {
    if (_dewpoint2M is EqualUnmodifiableListView) return _dewpoint2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dewpoint2M);
  }

  final List<double> _apparentTemperature;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature {
    if (_apparentTemperature is EqualUnmodifiableListView)
      return _apparentTemperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperature);
  }

  final List<int> _precipitationProbability;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability {
    if (_precipitationProbability is EqualUnmodifiableListView)
      return _precipitationProbability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbability);
  }

  final List<double> _precipitation;
  @override
  List<double> get precipitation {
    if (_precipitation is EqualUnmodifiableListView) return _precipitation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitation);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey(name: 'weathercode')
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<int> _cloudCover;
  @override
  @JsonKey(name: 'cloudcover')
  List<int> get cloudCover {
    if (_cloudCover is EqualUnmodifiableListView) return _cloudCover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cloudCover);
  }

  final List<double> _visibility;
  @override
  List<double> get visibility {
    if (_visibility is EqualUnmodifiableListView) return _visibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibility);
  }

  final List<double> _windSpeed10M;
  @override
  @JsonKey(name: 'windspeed_10m')
  List<double> get windSpeed10M {
    if (_windSpeed10M is EqualUnmodifiableListView) return _windSpeed10M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed10M);
  }

  final List<double> _windDirection10M;
  @override
  @JsonKey(name: 'winddirection_10m')
  List<double> get windDirection10M {
    if (_windDirection10M is EqualUnmodifiableListView)
      return _windDirection10M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windDirection10M);
  }

  final List<double> _windGusts10M;
  @override
  @JsonKey(name: 'windgusts_10m')
  List<double> get windGusts10M {
    if (_windGusts10M is EqualUnmodifiableListView) return _windGusts10M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windGusts10M);
  }

  final List<double> _uvIndex;
  @override
  @JsonKey(name: 'uv_index')
  List<double> get uvIndex {
    if (_uvIndex is EqualUnmodifiableListView) return _uvIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uvIndex);
  }

  @override
  String toString() {
    return 'Hourly(time: $time, temperature2M: $temperature2M, relativehumidity2M: $relativehumidity2M, dewpoint2M: $dewpoint2M, apparentTemperature: $apparentTemperature, precipitationProbability: $precipitationProbability, precipitation: $precipitation, weatherCode: $weatherCode, cloudCover: $cloudCover, visibility: $visibility, windSpeed10M: $windSpeed10M, windDirection10M: $windDirection10M, windGusts10M: $windGusts10M, uvIndex: $uvIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hourly &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2M, _temperature2M) &&
            const DeepCollectionEquality()
                .equals(other._relativehumidity2M, _relativehumidity2M) &&
            const DeepCollectionEquality()
                .equals(other._dewpoint2M, _dewpoint2M) &&
            const DeepCollectionEquality()
                .equals(other._apparentTemperature, _apparentTemperature) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbability, _precipitationProbability) &&
            const DeepCollectionEquality()
                .equals(other._precipitation, _precipitation) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._cloudCover, _cloudCover) &&
            const DeepCollectionEquality()
                .equals(other._visibility, _visibility) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed10M, _windSpeed10M) &&
            const DeepCollectionEquality()
                .equals(other._windDirection10M, _windDirection10M) &&
            const DeepCollectionEquality()
                .equals(other._windGusts10M, _windGusts10M) &&
            const DeepCollectionEquality().equals(other._uvIndex, _uvIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2M),
      const DeepCollectionEquality().hash(_relativehumidity2M),
      const DeepCollectionEquality().hash(_dewpoint2M),
      const DeepCollectionEquality().hash(_apparentTemperature),
      const DeepCollectionEquality().hash(_precipitationProbability),
      const DeepCollectionEquality().hash(_precipitation),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_cloudCover),
      const DeepCollectionEquality().hash(_visibility),
      const DeepCollectionEquality().hash(_windSpeed10M),
      const DeepCollectionEquality().hash(_windDirection10M),
      const DeepCollectionEquality().hash(_windGusts10M),
      const DeepCollectionEquality().hash(_uvIndex));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourlyCopyWith<_$_Hourly> get copyWith =>
      __$$_HourlyCopyWithImpl<_$_Hourly>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyToJson(
      this,
    );
  }
}

abstract class _Hourly implements Hourly {
  const factory _Hourly(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature2M,
      @JsonKey(name: 'relativehumidity_2m')
      required final List<int> relativehumidity2M,
      @JsonKey(name: 'dewpoint_2m') required final List<double> dewpoint2M,
      @JsonKey(name: 'apparent_temperature')
      required final List<double> apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
      required final List<int> precipitationProbability,
      required final List<double> precipitation,
      @JsonKey(name: 'weathercode') required final List<int> weatherCode,
      @JsonKey(name: 'cloudcover') required final List<int> cloudCover,
      required final List<double> visibility,
      @JsonKey(name: 'windspeed_10m') required final List<double> windSpeed10M,
      @JsonKey(name: 'winddirection_10m')
      required final List<double> windDirection10M,
      @JsonKey(name: 'windgusts_10m') required final List<double> windGusts10M,
      @JsonKey(name: 'uv_index')
      required final List<double> uvIndex}) = _$_Hourly;

  factory _Hourly.fromJson(Map<String, dynamic> json) = _$_Hourly.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M;
  @override
  @JsonKey(name: 'relativehumidity_2m')
  List<int> get relativehumidity2M;
  @override
  @JsonKey(name: 'dewpoint_2m')
  List<double> get dewpoint2M;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability;
  @override
  List<double> get precipitation;
  @override
  @JsonKey(name: 'weathercode')
  List<int> get weatherCode;
  @override
  @JsonKey(name: 'cloudcover')
  List<int> get cloudCover;
  @override
  List<double> get visibility;
  @override
  @JsonKey(name: 'windspeed_10m')
  List<double> get windSpeed10M;
  @override
  @JsonKey(name: 'winddirection_10m')
  List<double> get windDirection10M;
  @override
  @JsonKey(name: 'windgusts_10m')
  List<double> get windGusts10M;
  @override
  @JsonKey(name: 'uv_index')
  List<double> get uvIndex;
  @override
  @JsonKey(ignore: true)
  _$$_HourlyCopyWith<_$_Hourly> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) {
  return _HourlyUnits.fromJson(json);
}

/// @nodoc
mixin _$HourlyUnits {
  @JsonKey(name: 'time')
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  String get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'relativehumidity_2m')
  String get relativehumidity2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'dewpoint_2m')
  String get dewpoint2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature')
  String get apparentTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability')
  String get precipitationProbability => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation')
  String get precipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'weathercode')
  String get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloudcover')
  String get cloudCover => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  String get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'windspeed_10m')
  String get windSpeed10M => throw _privateConstructorUsedError;
  @JsonKey(name: 'winddirection_10m')
  String get windDirection10M => throw _privateConstructorUsedError;
  @JsonKey(name: 'windgusts_10m')
  String get windGusts10M => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  String get uvIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyUnitsCopyWith<HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyUnitsCopyWith<$Res> {
  factory $HourlyUnitsCopyWith(
          HourlyUnits value, $Res Function(HourlyUnits) then) =
      _$HourlyUnitsCopyWithImpl<$Res, HourlyUnits>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') String time,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      @JsonKey(name: 'relativehumidity_2m') String relativehumidity2M,
      @JsonKey(name: 'dewpoint_2m') String dewpoint2M,
      @JsonKey(name: 'apparent_temperature') String apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
      String precipitationProbability,
      @JsonKey(name: 'precipitation') String precipitation,
      @JsonKey(name: 'weathercode') String weatherCode,
      @JsonKey(name: 'cloudcover') String cloudCover,
      @JsonKey(name: 'visibility') String visibility,
      @JsonKey(name: 'windspeed_10m') String windSpeed10M,
      @JsonKey(name: 'winddirection_10m') String windDirection10M,
      @JsonKey(name: 'windgusts_10m') String windGusts10M,
      @JsonKey(name: 'uv_index') String uvIndex});
}

/// @nodoc
class _$HourlyUnitsCopyWithImpl<$Res, $Val extends HourlyUnits>
    implements $HourlyUnitsCopyWith<$Res> {
  _$HourlyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? relativehumidity2M = null,
    Object? dewpoint2M = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? cloudCover = null,
    Object? visibility = null,
    Object? windSpeed10M = null,
    Object? windDirection10M = null,
    Object? windGusts10M = null,
    Object? uvIndex = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      relativehumidity2M: null == relativehumidity2M
          ? _value.relativehumidity2M
          : relativehumidity2M // ignore: cast_nullable_to_non_nullable
              as String,
      dewpoint2M: null == dewpoint2M
          ? _value.dewpoint2M
          : dewpoint2M // ignore: cast_nullable_to_non_nullable
              as String,
      apparentTemperature: null == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbability: null == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as String,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      cloudCover: null == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed10M: null == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String,
      windDirection10M: null == windDirection10M
          ? _value.windDirection10M
          : windDirection10M // ignore: cast_nullable_to_non_nullable
              as String,
      windGusts10M: null == windGusts10M
          ? _value.windGusts10M
          : windGusts10M // ignore: cast_nullable_to_non_nullable
              as String,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HourlyUnitsCopyWith<$Res>
    implements $HourlyUnitsCopyWith<$Res> {
  factory _$$_HourlyUnitsCopyWith(
          _$_HourlyUnits value, $Res Function(_$_HourlyUnits) then) =
      __$$_HourlyUnitsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') String time,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      @JsonKey(name: 'relativehumidity_2m') String relativehumidity2M,
      @JsonKey(name: 'dewpoint_2m') String dewpoint2M,
      @JsonKey(name: 'apparent_temperature') String apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
      String precipitationProbability,
      @JsonKey(name: 'precipitation') String precipitation,
      @JsonKey(name: 'weathercode') String weatherCode,
      @JsonKey(name: 'cloudcover') String cloudCover,
      @JsonKey(name: 'visibility') String visibility,
      @JsonKey(name: 'windspeed_10m') String windSpeed10M,
      @JsonKey(name: 'winddirection_10m') String windDirection10M,
      @JsonKey(name: 'windgusts_10m') String windGusts10M,
      @JsonKey(name: 'uv_index') String uvIndex});
}

/// @nodoc
class __$$_HourlyUnitsCopyWithImpl<$Res>
    extends _$HourlyUnitsCopyWithImpl<$Res, _$_HourlyUnits>
    implements _$$_HourlyUnitsCopyWith<$Res> {
  __$$_HourlyUnitsCopyWithImpl(
      _$_HourlyUnits _value, $Res Function(_$_HourlyUnits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? relativehumidity2M = null,
    Object? dewpoint2M = null,
    Object? apparentTemperature = null,
    Object? precipitationProbability = null,
    Object? precipitation = null,
    Object? weatherCode = null,
    Object? cloudCover = null,
    Object? visibility = null,
    Object? windSpeed10M = null,
    Object? windDirection10M = null,
    Object? windGusts10M = null,
    Object? uvIndex = null,
  }) {
    return _then(_$_HourlyUnits(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      relativehumidity2M: null == relativehumidity2M
          ? _value.relativehumidity2M
          : relativehumidity2M // ignore: cast_nullable_to_non_nullable
              as String,
      dewpoint2M: null == dewpoint2M
          ? _value.dewpoint2M
          : dewpoint2M // ignore: cast_nullable_to_non_nullable
              as String,
      apparentTemperature: null == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbability: null == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as String,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      cloudCover: null == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed10M: null == windSpeed10M
          ? _value.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String,
      windDirection10M: null == windDirection10M
          ? _value.windDirection10M
          : windDirection10M // ignore: cast_nullable_to_non_nullable
              as String,
      windGusts10M: null == windGusts10M
          ? _value.windGusts10M
          : windGusts10M // ignore: cast_nullable_to_non_nullable
              as String,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourlyUnits implements _HourlyUnits {
  const _$_HourlyUnits(
      {@JsonKey(name: 'time') required this.time,
      @JsonKey(name: 'temperature_2m') required this.temperature2M,
      @JsonKey(name: 'relativehumidity_2m') required this.relativehumidity2M,
      @JsonKey(name: 'dewpoint_2m') required this.dewpoint2M,
      @JsonKey(name: 'apparent_temperature') required this.apparentTemperature,
      @JsonKey(name: 'precipitation_probability')
      required this.precipitationProbability,
      @JsonKey(name: 'precipitation') required this.precipitation,
      @JsonKey(name: 'weathercode') required this.weatherCode,
      @JsonKey(name: 'cloudcover') required this.cloudCover,
      @JsonKey(name: 'visibility') required this.visibility,
      @JsonKey(name: 'windspeed_10m') required this.windSpeed10M,
      @JsonKey(name: 'winddirection_10m') required this.windDirection10M,
      @JsonKey(name: 'windgusts_10m') required this.windGusts10M,
      @JsonKey(name: 'uv_index') required this.uvIndex});

  factory _$_HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyUnitsFromJson(json);

  @override
  @JsonKey(name: 'time')
  final String time;
  @override
  @JsonKey(name: 'temperature_2m')
  final String temperature2M;
  @override
  @JsonKey(name: 'relativehumidity_2m')
  final String relativehumidity2M;
  @override
  @JsonKey(name: 'dewpoint_2m')
  final String dewpoint2M;
  @override
  @JsonKey(name: 'apparent_temperature')
  final String apparentTemperature;
  @override
  @JsonKey(name: 'precipitation_probability')
  final String precipitationProbability;
  @override
  @JsonKey(name: 'precipitation')
  final String precipitation;
  @override
  @JsonKey(name: 'weathercode')
  final String weatherCode;
  @override
  @JsonKey(name: 'cloudcover')
  final String cloudCover;
  @override
  @JsonKey(name: 'visibility')
  final String visibility;
  @override
  @JsonKey(name: 'windspeed_10m')
  final String windSpeed10M;
  @override
  @JsonKey(name: 'winddirection_10m')
  final String windDirection10M;
  @override
  @JsonKey(name: 'windgusts_10m')
  final String windGusts10M;
  @override
  @JsonKey(name: 'uv_index')
  final String uvIndex;

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature2M: $temperature2M, relativehumidity2M: $relativehumidity2M, dewpoint2M: $dewpoint2M, apparentTemperature: $apparentTemperature, precipitationProbability: $precipitationProbability, precipitation: $precipitation, weatherCode: $weatherCode, cloudCover: $cloudCover, visibility: $visibility, windSpeed10M: $windSpeed10M, windDirection10M: $windDirection10M, windGusts10M: $windGusts10M, uvIndex: $uvIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(other.relativehumidity2M, relativehumidity2M) ||
                other.relativehumidity2M == relativehumidity2M) &&
            (identical(other.dewpoint2M, dewpoint2M) ||
                other.dewpoint2M == dewpoint2M) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(
                    other.precipitationProbability, precipitationProbability) ||
                other.precipitationProbability == precipitationProbability) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.cloudCover, cloudCover) ||
                other.cloudCover == cloudCover) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed10M, windSpeed10M) ||
                other.windSpeed10M == windSpeed10M) &&
            (identical(other.windDirection10M, windDirection10M) ||
                other.windDirection10M == windDirection10M) &&
            (identical(other.windGusts10M, windGusts10M) ||
                other.windGusts10M == windGusts10M) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      temperature2M,
      relativehumidity2M,
      dewpoint2M,
      apparentTemperature,
      precipitationProbability,
      precipitation,
      weatherCode,
      cloudCover,
      visibility,
      windSpeed10M,
      windDirection10M,
      windGusts10M,
      uvIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourlyUnitsCopyWith<_$_HourlyUnits> get copyWith =>
      __$$_HourlyUnitsCopyWithImpl<_$_HourlyUnits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyUnitsToJson(
      this,
    );
  }
}

abstract class _HourlyUnits implements HourlyUnits {
  const factory _HourlyUnits(
          {@JsonKey(name: 'time') required final String time,
          @JsonKey(name: 'temperature_2m') required final String temperature2M,
          @JsonKey(name: 'relativehumidity_2m')
          required final String relativehumidity2M,
          @JsonKey(name: 'dewpoint_2m') required final String dewpoint2M,
          @JsonKey(name: 'apparent_temperature')
          required final String apparentTemperature,
          @JsonKey(name: 'precipitation_probability')
          required final String precipitationProbability,
          @JsonKey(name: 'precipitation') required final String precipitation,
          @JsonKey(name: 'weathercode') required final String weatherCode,
          @JsonKey(name: 'cloudcover') required final String cloudCover,
          @JsonKey(name: 'visibility') required final String visibility,
          @JsonKey(name: 'windspeed_10m') required final String windSpeed10M,
          @JsonKey(name: 'winddirection_10m')
          required final String windDirection10M,
          @JsonKey(name: 'windgusts_10m') required final String windGusts10M,
          @JsonKey(name: 'uv_index') required final String uvIndex}) =
      _$_HourlyUnits;

  factory _HourlyUnits.fromJson(Map<String, dynamic> json) =
      _$_HourlyUnits.fromJson;

  @override
  @JsonKey(name: 'time')
  String get time;
  @override
  @JsonKey(name: 'temperature_2m')
  String get temperature2M;
  @override
  @JsonKey(name: 'relativehumidity_2m')
  String get relativehumidity2M;
  @override
  @JsonKey(name: 'dewpoint_2m')
  String get dewpoint2M;
  @override
  @JsonKey(name: 'apparent_temperature')
  String get apparentTemperature;
  @override
  @JsonKey(name: 'precipitation_probability')
  String get precipitationProbability;
  @override
  @JsonKey(name: 'precipitation')
  String get precipitation;
  @override
  @JsonKey(name: 'weathercode')
  String get weatherCode;
  @override
  @JsonKey(name: 'cloudcover')
  String get cloudCover;
  @override
  @JsonKey(name: 'visibility')
  String get visibility;
  @override
  @JsonKey(name: 'windspeed_10m')
  String get windSpeed10M;
  @override
  @JsonKey(name: 'winddirection_10m')
  String get windDirection10M;
  @override
  @JsonKey(name: 'windgusts_10m')
  String get windGusts10M;
  @override
  @JsonKey(name: 'uv_index')
  String get uvIndex;
  @override
  @JsonKey(ignore: true)
  _$$_HourlyUnitsCopyWith<_$_HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}
