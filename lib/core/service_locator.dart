import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import '../application/cubits.dart';
import '../domain/city/city.dart';
import '../domain/core/core.dart';
import '../domain/weather/weather.dart';
import '../infrastructure/city/city.dart';
import '../infrastructure/core/core.dart';
import '../infrastructure/location/location_service.dart';
import '../infrastructure/weather/weather.dart';

final serviceLocator = GetIt.instance;

void setupServiceLocator() {
  //CORE
  serviceLocator.registerLazySingleton<http.Client>(() => http.Client());

  //DATA SOURCES
  serviceLocator.registerLazySingleton<CityRemoteDataSource>(
    () => CityRemoteDataSource(client: serviceLocator<http.Client>()),
  );
  serviceLocator.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSource(client: serviceLocator<http.Client>()));

  //REPOSITORIES
  serviceLocator.registerLazySingleton<CityRepository>(
    () => CityRepositoryImpl(
        remoteDataSource: serviceLocator<CityRemoteDataSource>()),
  );
  serviceLocator.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
        remoteDataSource: serviceLocator<WeatherRemoteDataSource>()),
  );
  serviceLocator.registerLazySingleton<CityWeatherRepository>(
      () => CityWeatherRepositoryImpl(
            locationService: serviceLocator<LocationService>(),
            cityRepository: serviceLocator<CityRepository>(),
            weatherRepository: serviceLocator<WeatherRepository>(),
          ));

  //SERVICES
  serviceLocator.registerLazySingleton(() => LocationService());

  //CUBITS
  serviceLocator.registerFactory<ThemeCubit>(() => ThemeCubit());
  serviceLocator.registerFactory<CityWeatherCubit>(() => CityWeatherCubit(
      cityWeatherRepository: serviceLocator<CityWeatherRepository>()));
  serviceLocator.registerFactory<LocationCubit>(
      () => LocationCubit(repository: serviceLocator<CityWeatherRepository>()));
}
