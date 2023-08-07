import 'package:flutter/material.dart';
import 'package:weather_app/domain/weather/extension/extension.dart';

import '../../../domain/weather/entities/weather.dart';
import '../../../styles/styles.dart';

class WeatherSummary extends StatelessWidget {
  const WeatherSummary({
    super.key,
    required this.currentWeather,
  });

  final CurrentWeather currentWeather;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          currentWeather.temperature.asCelsius,
          style: $styles.text.h1.copyWith(
            color: currentWeather.weatherCode.toWeatherColor(
              colorScheme,
              currentWeather.isDay == 1,
            ),
          ),
        ),
        VSpace(size: $styles.insets.sm),
        Row(
          children: [
            Text(
              currentWeather.time.toDayFormat,
              style: $styles.text.h3.copyWith(
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
            HSpace(size: $styles.insets.xs),
            _TimeChip(time: currentWeather.time),
          ],
        ),
        VSpace(size: $styles.insets.xxs),
        _WeatherGreeting(
          weatherCode: currentWeather.weatherCode,
          isDay: currentWeather.isDay == 1,
        ),
      ],
    );
  }
}

class _TimeChip extends StatelessWidget {
  const _TimeChip({
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: $styles.insets.xs,
        vertical: $styles.insets.xxs,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($styles.corners.lg),
          border: Border.all(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
          )),
      child: Text(
        time.to24HourFormat,
        style: $styles.text.caption,
      ),
    );
  }
}

class _WeatherGreeting extends StatelessWidget {
  const _WeatherGreeting({
    required this.weatherCode,
    required this.isDay,
  });

  final int weatherCode;
  final bool isDay;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Text(
        weatherCode.toWeatherGreeting(isDay),
        style: $styles.text.body.copyWith(
          color: Colors.grey,
          height: 1.5,
        ),
      ),
    );
  }
}
