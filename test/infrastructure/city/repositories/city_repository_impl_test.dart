import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/domain/city/city.dart';
import 'package:weather_app/domain/city/entities/city.dart';
import 'package:weather_app/infrastructure/city/city.dart';

import 'city_repository_impl_test.mocks.dart';

@GenerateMocks([CityRemoteDataSource])
void main() {
  late CityRepositoryImpl repository;
  late MockCityRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockCityRemoteDataSource();
    repository = CityRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  group('getCities', () {
    final cities = [
      const City(
          geonameId: 1,
          countryCode: CountryCode.GB,
          name: 'London',
          lng: '0.1276',
          lat: '51.5074')
    ];

    test(
        'should return a list of cities when the call to remote data source is successful',
        () async {
      when(mockRemoteDataSource.getCities(any)).thenAnswer((_) async => cities);
      final result = await repository.getCities(1);
      expect(result, right(cities));
    });

    test(
        'should return ServerError when remote data source throws ServerException',
        () async {
      when(mockRemoteDataSource.getCities(any))
          .thenThrow(const RemoteException.server(message: 'Server Error'));
      final result = await repository.getCities(1);
      expect(result, left(const CityFailure.serverError()));
    });

    test(
        'should return NetworkError when remote data source throws NetworkException',
        () async {
      when(mockRemoteDataSource.getCities(any))
          .thenThrow(const RemoteException.network(message: 'Network Error'));
      final result = await repository.getCities(1);
      expect(result, left(const CityFailure.networkError()));
    });

    test(
        'should return AuthorizationError when remote data source throws AuthorizationException',
        () async {
      when(mockRemoteDataSource.getCities(any)).thenThrow(
          const RemoteException.authorization(message: 'Authorization Error'));
      final result = await repository.getCities(1);
      expect(result, left(const CityFailure.authorizationError()));
    });

    test(
        'should return UnexpectedError when remote data source throws UnexpectedException',
        () async {
      when(mockRemoteDataSource.getCities(any)).thenThrow(
          const RemoteException.unexpected(message: 'Unexpected Error'));
      final result = await repository.getCities(1);
      expect(result, left(const CityFailure.unexpectedError()));
    });
  });

  group('getCityByLatLon', () {
    const city = City(
        geonameId: 1,
        countryCode: CountryCode.GB,
        name: 'London',
        lng: '0.1276',
        lat: '51.5074');

    test(
        'should return a city when the call to remote data source is successful',
        () async {
      when(mockRemoteDataSource.getCityByLatLon(any, any))
          .thenAnswer((_) async => city);
      final result = await repository.getCityByLatLon(51.509865, -0.118092);
      expect(result, right(city));
    });

    test(
        'should return ServerError when remote data source throws ServerException',
        () async {
      when(mockRemoteDataSource.getCityByLatLon(any, any))
          .thenThrow(const RemoteException.server(message: 'Server Error'));
      final result = await repository.getCityByLatLon(51.509865, -0.118092);
      expect(result, left(const CityFailure.serverError()));
    });

    test(
        'should return NetworkError when remote data source throws NetworkException',
        () async {
      when(mockRemoteDataSource.getCityByLatLon(any, any))
          .thenThrow(const RemoteException.network(message: 'Network Error'));
      final result = await repository.getCityByLatLon(51.509865, -0.118092);
      expect(result, left(const CityFailure.networkError()));
    });

    test(
        'should return AuthorizationError when remote data source throws AuthorizationException',
        () async {
      when(mockRemoteDataSource.getCityByLatLon(any, any)).thenThrow(
          const RemoteException.authorization(message: 'Authorization Error'));
      final result = await repository.getCityByLatLon(51.509865, -0.118092);
      expect(result, left(const CityFailure.authorizationError()));
    });

    test(
        'should return UnexpectedError when remote data source throws UnexpectedException',
        () async {
      when(mockRemoteDataSource.getCityByLatLon(any, any)).thenThrow(
          const RemoteException.unexpected(message: 'Unexpected Error'));
      final result = await repository.getCityByLatLon(51.509865, -0.118092);
      expect(result, left(const CityFailure.unexpectedError()));
    });
  });
}
