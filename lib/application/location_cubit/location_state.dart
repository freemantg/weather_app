part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.loaded(CityWeather cityWeather) = _Loaded;
  const factory LocationState.error(CityWeatherFailure message) = _Error;
}
