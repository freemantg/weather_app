part of 'city_weather_cubit.dart';

@freezed
class CityWeatherState with _$CityWeatherState {
  const factory CityWeatherState.initial(List<CityWeather> cityWeathers) =
      _Initial;
  const factory CityWeatherState.loading(List<CityWeather> cityWeathers) =
      _Loading;
  const factory CityWeatherState.loaded(List<CityWeather> cityWeathers) =
      _Loaded;
  const factory CityWeatherState.error(
      List<CityWeather> cityWeathers, CityWeatherFailure failure) = _Error;
}
