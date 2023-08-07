import 'package:flutter/material.dart';

import '../../../domain/core/entities/city_weather.dart';
import '../../../styles/styles.dart';

class LocationBackButton extends StatelessWidget {
  const LocationBackButton({
    super.key,
    required this.cityWeather,
  });

  final CityWeather cityWeather;

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface.withOpacity(0.8);

    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: onSurface,
          ),
          HSpace(size: $styles.insets.xxs),
          Text(
            cityWeather.city.name,
            style: $styles.text.body.copyWith(
              color: onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
