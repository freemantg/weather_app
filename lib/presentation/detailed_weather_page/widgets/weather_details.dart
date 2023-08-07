import 'package:flutter/material.dart';

import '../../../domain/core/entities/city_weather.dart';
import '../../../styles/styles.dart';
import '../../city_list_page/widgets/widgets.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    super.key,
    required this.cityWeather,
  });

  final CityWeather cityWeather;

  @override
  Widget build(BuildContext context) {
    final hourly = cityWeather.weather.hourly;
    final hourlyUnits = cityWeather.weather.hourlyUnits;

    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        _buildWeatherDetailColumn(
          "UV",
          1,
          hourly.uvIndex.last.toString(),
          "",
        ),
        _buildWeatherDetailColumn(
          "RH",
          53,
          hourly.relativehumidity2M.last.toString(),
          hourlyUnits.relativehumidity2M,
        ),
        _buildWeatherDetailColumn(
          "DEW",
          53,
          hourly.dewpoint2M.last.toString(),
          hourlyUnits.dewpoint2M,
        ),
        _buildWeatherDetailColumn(
          "CLD",
          2,
          hourly.cloudCover.last.toString(),
          hourlyUnits.cloudCover,
        ),
        _buildWeatherDetailColumn(
          "PP",
          85,
          hourly.precipitationProbability.last.toString(),
          hourlyUnits.precipitationProbability,
        ),
        _buildWeatherDetailColumn(
          "WIN",
          45,
          hourly.windSpeed10M.last.toString(),
          hourlyUnits.windSpeed10M,
        )
      ],
    );
  }

  Widget _buildWeatherDetailColumn(
    String name,
    int weatherCode,
    String measure,
    String units,
  ) {
    return WeatherDetailColumn(
      name: name,
      weatherCode: weatherCode,
      measure: measure,
      units: units,
    );
  }
}

class WeatherDetailColumn extends StatelessWidget {
  const WeatherDetailColumn({
    super.key,
    required this.name,
    required this.weatherCode,
    required this.measure,
    required this.units,
    this.padding,
  });

  final String name;
  final int weatherCode;
  final String measure;
  final String units;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(name, style: $styles.text.caption),
        VSpace(size: $styles.insets.sm),
        WeatherIcon(weatherCode: weatherCode, isDay: true),
        VSpace(size: $styles.insets.sm),
        Text(
          "$measure $units",
          style: $styles.text.caption,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
