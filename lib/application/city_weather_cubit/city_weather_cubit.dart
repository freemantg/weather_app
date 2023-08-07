import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/core.dart';


part 'city_weather_state.dart';
part 'city_weather_cubit.freezed.dart';

class CityWeatherCubit extends Cubit<CityWeatherState> {
  final CityWeatherRepository _repository;
  int _page = 0;

  CityWeatherCubit({required CityWeatherRepository cityWeatherRepository})
      : _repository = cityWeatherRepository,
        super(const CityWeatherState.initial([]));

  Future<void> getCityWeathers() async {
    emit(CityWeatherState.loading(state.cityWeathers));
    final failureOrCityWeathers = await _repository.getCityWeathers(_page);
    failureOrCityWeathers.fold(
      (failure) => emit(CityWeatherState.error(state.cityWeathers, failure)),
      (cityWeathers) {
        _page++;
        final currentCityWeather = state.cityWeathers + cityWeathers;
        final updatedCityWeather = currentCityWeather;
        emit(CityWeatherState.loaded(updatedCityWeather));
      },
    );
  }
}
