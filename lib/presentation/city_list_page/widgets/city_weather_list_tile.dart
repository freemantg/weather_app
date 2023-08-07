import 'package:flutter/material.dart';
import 'package:weather_app/domain/weather/extension/extension.dart';

import '../../../domain/core/core.dart';
import '../../../domain/weather/entities/weather.dart';
import '../../../styles/styles.dart';
import '../../detailed_weather_page/detailed_weather_page.dart';
import '../../routes/fade_route.dart';
import 'widgets.dart';

class CityWeatherListTile extends StatelessWidget {
  const CityWeatherListTile({
    super.key,
    required this.cityWeather,
  });

  final CityWeather cityWeather;

  @override
  Widget build(BuildContext context) {
    final currentWeather = cityWeather.weather.currentWeather;

    return ListTile(
      onTap: () => _onTap(context),
      leading: WeatherIcon(
        weatherCode: currentWeather.weatherCode,
        isDay: currentWeather.isDay == 1,
      ),
      title: _buildTitle(context, currentWeather),
      trailing: Text(
        currentWeather.temperature.asCelsius,
        style: $styles.text.h3.copyWith(
          height: 0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    Navigator.of(context).push(
      FadeRoute(
        page: DetailedWeatherPage(cityWeather: cityWeather),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, CurrentWeather currentWeather) {
    return Wrap(
      runSpacing: $styles.insets.xs,
      children: [
        Text(
          cityWeather.city.name,
          style: $styles.text.title1.copyWith(height: 0),
        ),
        HSpace(size: $styles.insets.xs),
        _buildWeatherDescriptionContainer(context, currentWeather),
      ],
    );
  }

  Widget _buildWeatherDescriptionContainer(
    BuildContext context,
    CurrentWeather currentWeather,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: $styles.insets.xs,
        vertical: $styles.insets.xxs,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($styles.corners.lg),
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
        ),
      ),
      child: Text(
        currentWeather.weatherCode.toShortWeatherDescription(false),
        style: $styles.text.caption,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
