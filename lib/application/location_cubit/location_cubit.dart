import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/core.dart';


part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  final CityWeatherRepository _repository;
  LocationCubit({required CityWeatherRepository repository})
      : _repository = repository,
        super(const LocationState.initial());

  Future<void> getLocation() async {
    emit(const LocationState.loading());
    final failureOrLocation = await _repository.getCityWeather();
    failureOrLocation.fold(
      (failure) => emit(LocationState.error(failure)),
      (cityWeather) => emit(LocationState.loaded(cityWeather)),
    );
  }
}
