import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/weather/entities/weather.dart';

import '../../city/entities/city.dart';
import '../failures/weather_failures.dart';

abstract class WeatherRepository {
  Future<Either<WeatherFailure, List<Weather>>> fetchCityWeathers(
      List<City> cities);
}
