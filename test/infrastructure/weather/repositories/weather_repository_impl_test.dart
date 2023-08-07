import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/city/entities/city.dart';
import 'package:weather_app/domain/weather/entities/weather.dart';
import 'package:weather_app/domain/weather/weather.dart';
import 'package:weather_app/infrastructure/weather/weather.dart';

import 'weather_repository_impl_test.mocks.dart';

@GenerateMocks([WeatherRemoteDataSource])
void main() {
  late MockWeatherRemoteDataSource mockWeatherRemoteDataSource;
  late WeatherRepositoryImpl repository;
  final List<City> cities = [];
  final List<Weather> weathers = [];

  setUp(() {
    mockWeatherRemoteDataSource = MockWeatherRemoteDataSource();
    repository =
        WeatherRepositoryImpl(remoteDataSource: mockWeatherRemoteDataSource);
  });

  group('fetchCityWeathers', () {
    test('should fetch city weathers successfully', () async {
      when(mockWeatherRemoteDataSource.getWeathers(cities))
          .thenAnswer((_) async => weathers);
      final result = await repository.fetchCityWeathers(cities);
      expect(result, right(weathers));
      verify(mockWeatherRemoteDataSource.getWeathers(cities));
      verifyNoMoreInteractions(mockWeatherRemoteDataSource);
    });

    test('should return api error when WeatherApiException is thrown',
        () async {
      const apiError = 'API Error';
      when(mockWeatherRemoteDataSource.getWeathers(cities))
          .thenThrow(WeatherApiException(apiError));
      final result = await repository.fetchCityWeathers(cities);
      expect(result, left(const WeatherFailure.apiError(apiError)));
      verify(mockWeatherRemoteDataSource.getWeathers(cities));
      verifyNoMoreInteractions(mockWeatherRemoteDataSource);
    });
  });
}
