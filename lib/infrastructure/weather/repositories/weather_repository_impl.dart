import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../domain/city/entities/city.dart';
import '../../../domain/weather/entities/weather.dart';
import '../../../domain/weather/weather.dart';
import '../weather.dart';


class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource _remoteDataSource;

  WeatherRepositoryImpl({required WeatherRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<WeatherFailure, List<Weather>>> fetchCityWeathers(
      List<City> cities) async {
    try {
      final weathers = await _remoteDataSource.getWeathers(cities);
      return right(weathers);
    } on WeatherApiException catch (e) {
      return left(WeatherFailure.apiError(e.reason));
    } catch (e) {
      return left(const WeatherFailure.unexpectedError());
    }
  }
}
