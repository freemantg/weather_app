// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      geonameId: json['geonameId'] as int,
      countryCode: _countryCodeFromJson(json['countryCode']),
      name: json['name'] as String,
      lng: json['lng'] as String,
      lat: json['lat'] as String,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'geonameId': instance.geonameId,
      'countryCode': _$CountryCodeEnumMap[instance.countryCode]!,
      'name': instance.name,
      'lng': instance.lng,
      'lat': instance.lat,
    };

const _$CountryCodeEnumMap = {
  CountryCode.GB: 'GB',
  CountryCode.IM: 'IM',
  CountryCode.JE: 'JE',
  CountryCode.GG: 'GG',
  CountryCode.GI: 'GI',
};
