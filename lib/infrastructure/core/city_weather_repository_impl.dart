import 'package:dartz/dartz.dart';

import '../../domain/city/city.dart';
import '../../domain/core/core.dart';
import '../../domain/weather/weather.dart';
import '../location/location_service.dart';


class CityWeatherRepositoryImpl implements CityWeatherRepository {
  final CityRepository cityRepository;
  final WeatherRepository weatherRepository;
  final LocationService locationService;

  CityWeatherRepositoryImpl({
    required this.cityRepository,
    required this.weatherRepository,
    required this.locationService,
  });

  @override
  Future<Either<CityWeatherFailure, List<CityWeather>>> getCityWeathers(
      int page) async {
    final failureOrCities = await cityRepository.getCities(page);

    return failureOrCities.fold(
      (cityFailure) => left(CityWeatherFailure.city(cityFailure)),
      (cities) async {
        final failureOrWeathers =
            await weatherRepository.fetchCityWeathers(cities);

        return failureOrWeathers.fold(
          (weatherFailure) => left(CityWeatherFailure.weather(weatherFailure)),
          (weathers) => right(
            List<CityWeather>.generate(
              cities.length,
              (index) => CityWeather(
                city: cities[index],
                weather: weathers[index],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Future<Either<CityWeatherFailure, CityWeather>> getCityWeather() async {
    final failureOrLocation = await locationService.getCurrentLocation();
    return failureOrLocation.fold(
      (locationFailure) => left(LocationFailureCase(locationFailure)),
      (location) async {
        final failureOrCity = await cityRepository.getCityByLatLon(
          location.latitude,
          location.longitude,
        );

        return failureOrCity.fold(
          (cityFailure) => left(CityWeatherFailure.city(cityFailure)),
          (city) async {
            final failureOrWeather =
                await weatherRepository.fetchCityWeathers([city]);

            return failureOrWeather.fold(
              (weatherFailure) =>
                  left(CityWeatherFailure.weather(weatherFailure)),
              (weather) => right(
                CityWeather(
                  city: city,
                  weather: weather.first,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
