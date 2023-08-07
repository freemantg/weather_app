// import 'package:bloc_test/bloc_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:weather_app/application/cubits.dart';
// import 'package:weather_app/domain/city/city.dart';
// import 'package:weather_app/domain/city/entities/city.dart';
// import 'package:weather_app/domain/core/core.dart';
// import 'package:weather_app/domain/weather/entities/weather.dart';

// import '../city_weather_cubit/city_weather_cubit_test.mocks.dart';

// City createCity() {
//   return const City(
//     geonameId: 1,
//     countryCode: CountryCode.GB,
//     name: 'London',
//     lng: '0.1276',
//     lat: '51.5074',
//   );
// }

// Weather createWeather() {
//   final weatherJson = {
//     'latitude': 51.5074,
//     'longitude': 0.1276,
//     'generationtime_ms': 100.0,
//     'utc_offset_seconds': 0,
//     'timezone': 'UTC',
//     'timezone_abbreviation': 'UTC',
//     'elevation': 35.0,
//     'current_weather': {
//       'temperature': 15,
//       'windspeed': 5.0,
//       'winddirection': 200.0,
//       'weathercode': 2,
//       'is_day': 1,
//       'time': '12:00',
//     },
//     'hourly_units': {
//       'time': 'UTC',
//       'temperature_2m': '°C',
//       'relativehumidity_2m': '%',
//       'dewpoint_2m': '°C',
//       'apparent_temperature': '°C',
//       'precipitation_probability': '%',
//       'precipitation': 'mm',
//       'weathercode': '',
//       'cloudcover': '%',
//       'visibility': 'km',
//       'windspeed_10m': 'm/s',
//       'winddirection_10m': '°',
//       'windgusts_10m': 'm/s',
//       'uv_index': '',
//     },
//     'hourly': {
//       'time': ['12:00'],
//       'temperature_2m': [15.0],
//       'relativehumidity_2m': [75],
//       'dewpoint_2m': [10.0],
//       'apparent_temperature': [14.0],
//       'precipitation_probability': [10],
//       'precipitation': [0.0],
//       'weathercode': [2],
//       'cloudcover': [40],
//       'visibility': [10.0],
//       'windspeed_10m': [5.0],
//       'winddirection_10m': [200.0],
//       'windgusts_10m': [7.0],
//       'uv_index': [3.0],
//     }
//   };

//   return Weather.fromJson(weatherJson);
// }

// CityWeather createCityWeather() {
//   return CityWeather(
//     city: createCity(),
//     weather: createWeather(),
//   );
// }

// @GenerateMocks([CityWeatherRepository])
// void main() {
//   group('LocationCubit', () {
//     late LocationCubit locationCubit;
//     late MockCityWeatherRepository cityWeatherRepository;

//     setUp(() {
//       cityWeatherRepository = MockCityWeatherRepository();
//       locationCubit = LocationCubit(repository: cityWeatherRepository);
//     });

//     tearDown(() {
//       locationCubit.close();
//     });

//     // Success test case
//     blocTest<LocationCubit, LocationState>(
//       'emits [loading, loaded] when getLocation succeeds',
//       build: () {
//         when(cityWeatherRepository.getCityWeather())
//             .thenAnswer((_) async => right(createCityWeather()));
//         return locationCubit;
//       },
//       act: (cubit) => cubit.getLocation(),
//       expect: () => [
//         const LocationState.loading(),
//         LocationState.loaded(createCityWeather()),
//       ],
//     );

//     // Failure test case
//     blocTest<LocationCubit, LocationState>(
//       'emits [loading, error] when getLocation fails',
//       build: () {
//         when(cityWeatherRepository.getCityWeather()).thenAnswer((_) async =>
//             left(const CityWeatherFailure.city(CityFailure.networkError())));
//         return locationCubit;
//       },
//       act: (cubit) => cubit.getLocation(),
//       expect: () => [
//         const LocationState.loading(),
//         const LocationState.error(
//             CityWeatherFailure.city(CityFailure.networkError())),
//       ],
//     );
//   });
// }
