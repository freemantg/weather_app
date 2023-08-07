import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../domain/city/city.dart';
import '../../../domain/city/entities/city.dart';
import '../city.dart';

class CityRepositoryImpl implements CityRepository {
  final CityRemoteDataSource remoteDataSource;

  CityRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<CityFailure, List<City>>> getCities(int page) async {
    try {
      final cities = await remoteDataSource.getCities(page);
      return right(cities);
    } on RemoteException catch (e) {
      return left(e.map(
        server: (_) => const CityFailure.serverError(),
        network: (_) => const CityFailure.networkError(),
        authorization: (_) => const CityFailure.authorizationError(),
        unexpected: (_) => const CityFailure.unexpectedError(),
      ));
    }
  }

  @override
  Future<Either<CityFailure, City>> getCityByLatLon(
      double lat, double lon) async {
    try {
      final city = await remoteDataSource.getCityByLatLon(lat, lon);
      return right(city);
    } on RemoteException catch (e) {
      return left(e.map(
        server: (_) => const CityFailure.serverError(),
        network: (_) => const CityFailure.networkError(),
        authorization: (_) => const CityFailure.authorizationError(),
        unexpected: (_) => const CityFailure.unexpectedError(),
      ));
    }
  }
}
