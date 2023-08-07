// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get geonameId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _countryCodeFromJson)
  CountryCode get countryCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {int geonameId,
      @JsonKey(fromJson: _countryCodeFromJson) CountryCode countryCode,
      String name,
      String lng,
      String lat});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geonameId = null,
    Object? countryCode = null,
    Object? name = null,
    Object? lng = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      geonameId: null == geonameId
          ? _value.geonameId
          : geonameId // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int geonameId,
      @JsonKey(fromJson: _countryCodeFromJson) CountryCode countryCode,
      String name,
      String lng,
      String lat});
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res, _$_City>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geonameId = null,
    Object? countryCode = null,
    Object? name = null,
    Object? lng = null,
    Object? lat = null,
  }) {
    return _then(_$_City(
      geonameId: null == geonameId
          ? _value.geonameId
          : geonameId // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_City extends _City {
  const _$_City(
      {required this.geonameId,
      @JsonKey(fromJson: _countryCodeFromJson) required this.countryCode,
      required this.name,
      required this.lng,
      required this.lat})
      : super._();

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  final int geonameId;
  @override
  @JsonKey(fromJson: _countryCodeFromJson)
  final CountryCode countryCode;
  @override
  final String name;
  @override
  final String lng;
  @override
  final String lat;

  @override
  String toString() {
    return 'City(geonameId: $geonameId, countryCode: $countryCode, name: $name, lng: $lng, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            (identical(other.geonameId, geonameId) ||
                other.geonameId == geonameId) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, geonameId, countryCode, name, lng, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(
      this,
    );
  }
}

abstract class _City extends City {
  const factory _City(
      {required final int geonameId,
      @JsonKey(fromJson: _countryCodeFromJson)
      required final CountryCode countryCode,
      required final String name,
      required final String lng,
      required final String lat}) = _$_City;
  const _City._() : super._();

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  int get geonameId;
  @override
  @JsonKey(fromJson: _countryCodeFromJson)
  CountryCode get countryCode;
  @override
  String get name;
  @override
  String get lng;
  @override
  String get lat;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
}
