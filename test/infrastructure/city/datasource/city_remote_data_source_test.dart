import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/city/entities/city.dart';
import 'package:weather_app/infrastructure/city/city.dart';

import 'city_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late CityRemoteDataSource dataSource;
  late MockClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockClient();
    dataSource = CityRemoteDataSource(client: mockHttpClient);
  });

  group('getCities', () {
    final dummyJsonResponse = jsonEncode({
      'geonames': [
        {
          'geonameId': 123,
          'countryCode': 'GB',
          'name': 'London',
          'lng': '0.1276',
          'lat': '51.5074',
        },
        {
          'geonameId': 456,
          'countryCode': 'GB',
          'name': 'Manchester',
          'lng': '-1.5491',
          'lat': '53.4839',
        },
      ]
    });

    test('should return a list of cities when the response code is 200',
        () async {
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(dummyJsonResponse, 200));

      final result = await dataSource.getCities(1);

      expect(result, isInstanceOf<List<City>>());
      expect(result.length, 2);
      expect(result[0].name, 'London');
      expect(result[1].name, 'Manchester');
    });

    test('should throw RemoteException.authorization when status value is 10',
        () async {
      final json = jsonEncode({
        'status': {'message': 'Invalid username', 'value': 10}
      });
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(json, 200));

      final call = dataSource.getCities;

      expect(() => call(1), throwsA(isA<AuthorizationException>()));
    });

    test('should throw RemoteException.server when status value is 12 or 22',
        () async {
      final json = jsonEncode({
        'status': {'message': 'Server error', 'value': 12}
      });
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(json, 200));

      final call = dataSource.getCities;

      expect(() => call(1), throwsA(isA<ServerException>()));
    });

    test('should throw ServerException when response code is not 200',
        () async {
      // Arrange
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response('Something went wrong', 500));

      // Act
      final call = dataSource.getCities;

      // Assert
      expect(() => call(1), throwsA(isInstanceOf<ServerException>()));
    });
  });

  group('getCityByLatLon', () {
    final dummyJsonResponse = jsonEncode({
      'geonames': [
        {
          'geonameId': 123,
          'countryCode': 'GB',
          'name': 'London',
          'lng': '0.1276',
          'lat': '51.5074',
        },
      ]
    });

    test('should return a city when the response code is 200 and city is found',
        () async {
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(dummyJsonResponse, 200));

      final result = await dataSource.getCityByLatLon(51.509865, -0.118092);

      expect(result, isInstanceOf<City>());
      expect(result.name, 'London');
    });

    test('should throw RemoteException.unexpected when city is not found',
        () async {
      final json = jsonEncode({'geonames': []});
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(json, 200));

      final call = dataSource.getCityByLatLon;

      expect(() => call(51.509865, -0.118092),
          throwsA(isA<UnexpectedException>()));
    });

    test('should throw RemoteException.authorization when status value is 10',
        () async {
      final json = jsonEncode({
        'status': {'message': 'Invalid username', 'value': 10}
      });
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(json, 200));

      final call = dataSource.getCityByLatLon;

      expect(() => call(51.509865, -0.118092),
          throwsA(isInstanceOf<AuthorizationException>()));
    });

    test('should throw RemoteException.server when status value is 12 or 22',
        () async {
      final json = jsonEncode({
        'status': {'message': 'Server error', 'value': 12}
      });
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response(json, 200));

      final call = dataSource.getCityByLatLon;

      expect(() => call(51.509865, -0.118092),
          throwsA(isInstanceOf<ServerException>()));
    });

    test('should throw ServerException when response code is not 200',
        () async {
      when(mockHttpClient.get(any))
          .thenAnswer((_) async => http.Response('Something went wrong', 500));

      final call = dataSource.getCityByLatLon;

      expect(() => call(51.509865, -0.118092),
          throwsA(isInstanceOf<ServerException>()));
    });
  });
}
