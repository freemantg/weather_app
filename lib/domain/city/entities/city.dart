import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const City._();
  const factory City({
    required int geonameId,
    @JsonKey(fromJson: _countryCodeFromJson) required CountryCode countryCode,
    required String name,
    required String lng,
    required String lat,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

enum CountryCode {
  @JsonValue("GB")
  GB,
  IM,
  JE,
  GG,
  GI
}

CountryCode _countryCodeFromJson(dynamic value) {
  final String countryCodeString = value as String? ?? 'GB'; // Default value
  return countryCodeValues.map.containsKey(countryCodeString)
      ? countryCodeValues.map[countryCodeString]!
      : CountryCode.GB; // Default value if not found in the map
}

final countryCodeValues = EnumValues({
  "GB": CountryCode.GB,
  "IM": CountryCode.IM,
  "JE": CountryCode.JE,
  "GG": CountryCode.GG,
  "GI": CountryCode.GI,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
