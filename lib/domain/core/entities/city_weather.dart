import '../../city/entities/city.dart';
import '../../weather/entities/weather.dart';

class CityWeather {
  final City city;
  final Weather weather;

  CityWeather({
    required this.city,
    required this.weather,
  });
}
