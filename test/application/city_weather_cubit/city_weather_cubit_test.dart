import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/application/cubits.dart';
import 'package:weather_app/domain/city/city.dart';
import 'package:weather_app/domain/core/core.dart';
import 'package:weather_app/domain/location/location_failure.dart';
import 'package:weather_app/domain/weather/weather.dart';

import 'city_weather_cubit_test.mocks.dart';

@GenerateMocks([CityWeatherRepository])
void main() {
  group('CityWeatherCubit', () {
    final cityWeatherRepository = MockCityWeatherRepository();
    late CityWeatherCubit cityWeatherCubit;

    setUp(() {
      cityWeatherCubit =
          CityWeatherCubit(cityWeatherRepository: cityWeatherRepository);
    });

    tearDown(() {
      cityWeatherCubit.close();
    });

    // Success test case
    blocTest<CityWeatherCubit, CityWeatherState>(
      'emits [loading, loaded] when getCityWeathers succeeds',
      build: () {
        when(cityWeatherRepository.getCityWeathers(any))
            .thenAnswer((_) async => right(<CityWeather>[]));
        return cityWeatherCubit;
      },
      act: (cubit) => cubit.getCityWeathers(),
      expect: () => [
        const CityWeatherState.loading([]),
        const CityWeatherState.loaded([]),
      ],
    );

    // Failure test cases for each type of failure
    for (var failure in [
      const CityWeatherFailure.city(CityFailure.authorizationError()),
      const CityWeatherFailure.weather(WeatherFailure.apiError('error')),
      const CityWeatherFailure.location(LocationFailure.permissionDenied()),
    ]) {
      blocTest<CityWeatherCubit, CityWeatherState>(
        'emits [loading, error] when getCityWeathers fails with $failure',
        build: () {
          when(cityWeatherRepository.getCityWeathers(any))
              .thenAnswer((_) async => left(failure));
          return cityWeatherCubit;
        },
        act: (cubit) => cubit.getCityWeathers(),
        expect: () => [
          const CityWeatherState.loading([]),
          CityWeatherState.error([], failure),
        ],
      );
    }
  });
}
