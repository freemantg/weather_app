import 'package:geolocator/geolocator.dart';
import 'package:dartz/dartz.dart';

import '../../domain/location/location_failure.dart';

class LocationService {
  Future<Either<LocationFailure, Position>> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left(const LocationFailure.serviceDisabled());
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const LocationFailure.permissionDenied());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return left(const LocationFailure.permissionDeniedForever());
    }
    final position = await Geolocator.getCurrentPosition();
    return right(position);
  }
}
