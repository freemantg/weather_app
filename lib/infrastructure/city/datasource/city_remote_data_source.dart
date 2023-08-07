import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/core.dart';
import '../../../domain/city/entities/city.dart';


class CityRemoteDataSource {
  final http.Client client;

  const CityRemoteDataSource({required this.client});

  Future<List<City>> getCities(int page) async {
    //USERNAME is a dummy account left in for convenience.
  
    final uri = Uri.http(
      'api.geonames.org',
      '/searchJSON',
      {
        'username': 'applepie',
        'country': 'gb',
        'maxRows': '$itemsPerPage',
        'style': 'SHORT',
        'featureClass': 'P',
        'startRow': (page * itemsPerPage).toString(),
      },
    );

    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;

      if (data.containsKey('status')) {
        final status = data['status'] as Map<String, dynamic>;
        final message = status['message'] as String;
        final value = status['value'] as int;

        //http://www.geonames.org/export/webservice-exception.html
        switch (value) {
          case 10:
            throw RemoteException.authorization(message: message);
          case 12:
          case 22:
            throw RemoteException.server(message: message);
          default:
            throw RemoteException.unexpected(message: message);
        }
      }
      final cities = (data['geonames'] as List)
          .map((cityData) => City.fromJson(cityData as Map<String, dynamic>))
          .toList();
      return cities;
    } else {
      throw const ServerException();
    }
  }

  Future<City> getCityByLatLon(double lat, double lon) async {
    final uri = Uri.http(
      'api.geonames.org',
      '/findNearbyPlaceNameJSON',
      {
        'username': 'applepie',
        'lat': lat.toString(),
        'lng': lon.toString(),
      },
    );

    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;

      if (data.containsKey('status')) {
        final status = data['status'] as Map<String, dynamic>;
        final message = status['message'] as String;
        final value = status['value'] as int;

        switch (value) {
          case 10:
            throw RemoteException.authorization(message: message);
          case 12:
          case 22:
            throw RemoteException.server(message: message);
          default:
            throw RemoteException.unexpected(message: message);
        }
      }

      final cities = data['geonames'] as List;
      if (cities.isNotEmpty) {
        final cityData = cities.first as Map<String, dynamic>;
        return City.fromJson(cityData);
      } else {
        throw const RemoteException.unexpected(message: "City not found");
      }
    } else {
      throw const ServerException();
    }
  }
}
