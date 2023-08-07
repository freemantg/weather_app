import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/error/exceptions.dart';
import '../../../domain/city/entities/city.dart';
import '../../../domain/weather/entities/weather.dart';

const String baseUrl = 'api.open-meteo.com';
const String endpoint = '/v1/forecast';
const String hourlyParams =
    'temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,precipitation_probability,precipitation,weathercode,cloudcover,visibility,windspeed_10m,winddirection_10m,windgusts_10m,uv_index';

class WeatherRemoteDataSource {
  final http.Client client;

  const WeatherRemoteDataSource({required this.client});

  Future<List<Weather>> getWeathers(List<City> cities) async {
    var requests = cities.map((city) => getWeather(city)).toList();
    return await Future.wait(requests);
  }

  Future<Weather> getWeather(City city) async {
    final uri = Uri.https(baseUrl, endpoint, {
      'latitude': city.lat,
      'longitude': city.lng,
      'hourly': hourlyParams,
      'forecast_days': '1',
      'current_weather': 'true',
    });
    final response = await client.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Weather.fromJson(data);
    } else if (response.statusCode == 400) {
      final errorData = json.decode(response.body);
      if (errorData['error'] == true) {
        throw WeatherApiException(errorData['reason'] as String);
      }
    }
    throw Exception('Unexpected error fetching weather for ${city.name}');
  }
}
