import 'package:dartz/dartz.dart';

import '../entities/city_weather.dart';
import '../failures/city_weather_failure.dart';

abstract class CityWeatherRepository {
  Future<Either<CityWeatherFailure, List<CityWeather>>> getCityWeathers(
      int page);
  Future<Either<CityWeatherFailure, CityWeather>> getCityWeather();
}
