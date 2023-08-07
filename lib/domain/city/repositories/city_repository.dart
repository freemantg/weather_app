import 'package:dartz/dartz.dart';

import '../entities/city.dart';
import '../failures/city_failures.dart';

abstract class CityRepository {
  Future<Either<CityFailure, List<City>>> getCities(int page);
  Future<Either<CityFailure,City>> getCityByLatLon(double lat, double lon);
}
