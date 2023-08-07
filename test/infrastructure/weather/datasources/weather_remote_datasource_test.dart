import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/city/entities/city.dart';
import 'package:weather_app/domain/weather/entities/weather.dart';
import 'package:weather_app/infrastructure/weather/weather.dart';
import 'package:http/http.dart' as http;

import '../../city/datasource/city_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late WeatherRemoteDataSource dataSource;
  late MockClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockClient();
    dataSource = WeatherRemoteDataSource(client: mockHttpClient);
  });

  group('getWeathers', () {
    final cities = [
      const City(
          geonameId: 1,
          countryCode: CountryCode.GB,
          name: 'London',
          lng: '0.1276',
          lat: '51.5074'),
    ];
    final weatherJson = {
      'latitude': 51.5074,
      'longitude': 0.1276,
      'generationtime_ms': 100.0,
      'utc_offset_seconds': 0,
      'timezone': 'UTC',
      'timezone_abbreviation': 'UTC',
      'elevation': 35.0,
      'current_weather': {
        'temperature': 15,
        'windspeed': 5.0,
        'winddirection': 200.0,
        'weathercode': 2,
        'is_day': 1,
        'time': '12:00',
      },
      'hourly_units': {
        'time': 'UTC',
        'temperature_2m': '°C',
        'relativehumidity_2m': '%',
        'dewpoint_2m': '°C',
        'apparent_temperature': '°C',
        'precipitation_probability': '%',
        'precipitation': 'mm',
        'weathercode': '',
        'cloudcover': '%',
        'visibility': 'km',
        'windspeed_10m': 'm/s',
        'winddirection_10m': '°',
        'windgusts_10m': 'm/s',
        'uv_index': '',
      },
      'hourly': {
        'time': ['12:00'],
        'temperature_2m': [15.0],
        'relativehumidity_2m': [75],
        'dewpoint_2m': [10.0],
        'apparent_temperature': [14.0],
        'precipitation_probability': [10],
        'precipitation': [0.0],
        'weathercode': [2],
        'cloudcover': [40],
        'visibility': [10.0],
        'windspeed_10m': [5.0],
        'winddirection_10m': [200.0],
        'windgusts_10m': [7.0],
        'uv_index': [3.0],
      },
    };

    test('should return a list of weather when the response code is 200',
        () async {
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(jsonEncode(weatherJson), 200));

      final result = await dataSource.getWeathers(cities);

      expect(result, isInstanceOf<List<Weather>>());
      expect(result.length, 1);
    });

    test(
        'should throw WeatherApiException when response code is 400 and error is true',
        () async {
      final errorJson = {'error': true, 'reason': 'Invalid coordinates'};
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(jsonEncode(errorJson), 400));

      final call = dataSource.getWeathers;

      expect(() => call(cities), throwsA(isInstanceOf<WeatherApiException>()));
    });

    test('should throw Exception when response code is not 200 or 400',
        () async {
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response('Something went wrong', 500));

      final call = dataSource.getWeathers;

      expect(() => call(cities), throwsA(isInstanceOf<Exception>()));
    });
  });
}
