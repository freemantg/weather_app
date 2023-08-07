// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_weather_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityWeatherFailure {
  Object get failure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFailure failure) city,
    required TResult Function(WeatherFailure failure) weather,
    required TResult Function(LocationFailure failure) location,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFailure failure)? city,
    TResult? Function(WeatherFailure failure)? weather,
    TResult? Function(LocationFailure failure)? location,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFailure failure)? city,
    TResult Function(WeatherFailure failure)? weather,
    TResult Function(LocationFailure failure)? location,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityFailureCase value) city,
    required TResult Function(WeatherFailureCase value) weather,
    required TResult Function(LocationFailureCase value) location,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityFailureCase value)? city,
    TResult? Function(WeatherFailureCase value)? weather,
    TResult? Function(LocationFailureCase value)? location,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityFailureCase value)? city,
    TResult Function(WeatherFailureCase value)? weather,
    TResult Function(LocationFailureCase value)? location,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityWeatherFailureCopyWith<$Res> {
  factory $CityWeatherFailureCopyWith(
          CityWeatherFailure value, $Res Function(CityWeatherFailure) then) =
      _$CityWeatherFailureCopyWithImpl<$Res, CityWeatherFailure>;
}

/// @nodoc
class _$CityWeatherFailureCopyWithImpl<$Res, $Val extends CityWeatherFailure>
    implements $CityWeatherFailureCopyWith<$Res> {
  _$CityWeatherFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CityFailureCaseCopyWith<$Res> {
  factory _$$CityFailureCaseCopyWith(
          _$CityFailureCase value, $Res Function(_$CityFailureCase) then) =
      __$$CityFailureCaseCopyWithImpl<$Res>;
  @useResult
  $Res call({CityFailure failure});

  $CityFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CityFailureCaseCopyWithImpl<$Res>
    extends _$CityWeatherFailureCopyWithImpl<$Res, _$CityFailureCase>
    implements _$$CityFailureCaseCopyWith<$Res> {
  __$$CityFailureCaseCopyWithImpl(
      _$CityFailureCase _value, $Res Function(_$CityFailureCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CityFailureCase(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CityFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityFailureCopyWith<$Res> get failure {
    return $CityFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CityFailureCase implements CityFailureCase {
  const _$CityFailureCase(this.failure);

  @override
  final CityFailure failure;

  @override
  String toString() {
    return 'CityWeatherFailure.city(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityFailureCase &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityFailureCaseCopyWith<_$CityFailureCase> get copyWith =>
      __$$CityFailureCaseCopyWithImpl<_$CityFailureCase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFailure failure) city,
    required TResult Function(WeatherFailure failure) weather,
    required TResult Function(LocationFailure failure) location,
  }) {
    return city(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFailure failure)? city,
    TResult? Function(WeatherFailure failure)? weather,
    TResult? Function(LocationFailure failure)? location,
  }) {
    return city?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFailure failure)? city,
    TResult Function(WeatherFailure failure)? weather,
    TResult Function(LocationFailure failure)? location,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityFailureCase value) city,
    required TResult Function(WeatherFailureCase value) weather,
    required TResult Function(LocationFailureCase value) location,
  }) {
    return city(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityFailureCase value)? city,
    TResult? Function(WeatherFailureCase value)? weather,
    TResult? Function(LocationFailureCase value)? location,
  }) {
    return city?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityFailureCase value)? city,
    TResult Function(WeatherFailureCase value)? weather,
    TResult Function(LocationFailureCase value)? location,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(this);
    }
    return orElse();
  }
}

abstract class CityFailureCase implements CityWeatherFailure {
  const factory CityFailureCase(final CityFailure failure) = _$CityFailureCase;

  @override
  CityFailure get failure;
  @JsonKey(ignore: true)
  _$$CityFailureCaseCopyWith<_$CityFailureCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherFailureCaseCopyWith<$Res> {
  factory _$$WeatherFailureCaseCopyWith(_$WeatherFailureCase value,
          $Res Function(_$WeatherFailureCase) then) =
      __$$WeatherFailureCaseCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherFailure failure});

  $WeatherFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$WeatherFailureCaseCopyWithImpl<$Res>
    extends _$CityWeatherFailureCopyWithImpl<$Res, _$WeatherFailureCase>
    implements _$$WeatherFailureCaseCopyWith<$Res> {
  __$$WeatherFailureCaseCopyWithImpl(
      _$WeatherFailureCase _value, $Res Function(_$WeatherFailureCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$WeatherFailureCase(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WeatherFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherFailureCopyWith<$Res> get failure {
    return $WeatherFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$WeatherFailureCase implements WeatherFailureCase {
  const _$WeatherFailureCase(this.failure);

  @override
  final WeatherFailure failure;

  @override
  String toString() {
    return 'CityWeatherFailure.weather(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherFailureCase &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherFailureCaseCopyWith<_$WeatherFailureCase> get copyWith =>
      __$$WeatherFailureCaseCopyWithImpl<_$WeatherFailureCase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFailure failure) city,
    required TResult Function(WeatherFailure failure) weather,
    required TResult Function(LocationFailure failure) location,
  }) {
    return weather(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFailure failure)? city,
    TResult? Function(WeatherFailure failure)? weather,
    TResult? Function(LocationFailure failure)? location,
  }) {
    return weather?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFailure failure)? city,
    TResult Function(WeatherFailure failure)? weather,
    TResult Function(LocationFailure failure)? location,
    required TResult orElse(),
  }) {
    if (weather != null) {
      return weather(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityFailureCase value) city,
    required TResult Function(WeatherFailureCase value) weather,
    required TResult Function(LocationFailureCase value) location,
  }) {
    return weather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityFailureCase value)? city,
    TResult? Function(WeatherFailureCase value)? weather,
    TResult? Function(LocationFailureCase value)? location,
  }) {
    return weather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityFailureCase value)? city,
    TResult Function(WeatherFailureCase value)? weather,
    TResult Function(LocationFailureCase value)? location,
    required TResult orElse(),
  }) {
    if (weather != null) {
      return weather(this);
    }
    return orElse();
  }
}

abstract class WeatherFailureCase implements CityWeatherFailure {
  const factory WeatherFailureCase(final WeatherFailure failure) =
      _$WeatherFailureCase;

  @override
  WeatherFailure get failure;
  @JsonKey(ignore: true)
  _$$WeatherFailureCaseCopyWith<_$WeatherFailureCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationFailureCaseCopyWith<$Res> {
  factory _$$LocationFailureCaseCopyWith(_$LocationFailureCase value,
          $Res Function(_$LocationFailureCase) then) =
      __$$LocationFailureCaseCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationFailure failure});

  $LocationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LocationFailureCaseCopyWithImpl<$Res>
    extends _$CityWeatherFailureCopyWithImpl<$Res, _$LocationFailureCase>
    implements _$$LocationFailureCaseCopyWith<$Res> {
  __$$LocationFailureCaseCopyWithImpl(
      _$LocationFailureCase _value, $Res Function(_$LocationFailureCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LocationFailureCase(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as LocationFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationFailureCopyWith<$Res> get failure {
    return $LocationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LocationFailureCase implements LocationFailureCase {
  const _$LocationFailureCase(this.failure);

  @override
  final LocationFailure failure;

  @override
  String toString() {
    return 'CityWeatherFailure.location(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFailureCase &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFailureCaseCopyWith<_$LocationFailureCase> get copyWith =>
      __$$LocationFailureCaseCopyWithImpl<_$LocationFailureCase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFailure failure) city,
    required TResult Function(WeatherFailure failure) weather,
    required TResult Function(LocationFailure failure) location,
  }) {
    return location(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFailure failure)? city,
    TResult? Function(WeatherFailure failure)? weather,
    TResult? Function(LocationFailure failure)? location,
  }) {
    return location?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFailure failure)? city,
    TResult Function(WeatherFailure failure)? weather,
    TResult Function(LocationFailure failure)? location,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityFailureCase value) city,
    required TResult Function(WeatherFailureCase value) weather,
    required TResult Function(LocationFailureCase value) location,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityFailureCase value)? city,
    TResult? Function(WeatherFailureCase value)? weather,
    TResult? Function(LocationFailureCase value)? location,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityFailureCase value)? city,
    TResult Function(WeatherFailureCase value)? weather,
    TResult Function(LocationFailureCase value)? location,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }
}

abstract class LocationFailureCase implements CityWeatherFailure {
  const factory LocationFailureCase(final LocationFailure failure) =
      _$LocationFailureCase;

  @override
  LocationFailure get failure;
  @JsonKey(ignore: true)
  _$$LocationFailureCaseCopyWith<_$LocationFailureCase> get copyWith =>
      throw _privateConstructorUsedError;
}
