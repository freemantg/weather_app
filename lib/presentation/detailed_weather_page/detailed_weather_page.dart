import 'package:flutter/material.dart';

import '../../domain/core/core.dart';
import '../../styles/styles.dart';
import 'widgets/widgets.dart';

class DetailedWeatherPage extends StatelessWidget {
  const DetailedWeatherPage({
    super.key,
    required this.cityWeather,
  });

  final CityWeather cityWeather;

  @override
  Widget build(BuildContext context) {
    final currentWeather = cityWeather.weather.currentWeather;
    final padding = EdgeInsets.only(
      top: MediaQuery.of(context).padding.top + kToolbarHeight,
      left: $styles.insets.md,
      right: $styles.insets.md,
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: LocationBackButton(cityWeather: cityWeather),
        actions: const [ToggleUnitButton()],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          WeatherBackground(
            weatherCode: currentWeather.weatherCode,
            isDay: currentWeather.isDay == 1,
          ),
          Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                WeatherSummary(currentWeather: currentWeather),
                const Spacer(),
                WeatherDetails(cityWeather: cityWeather),
                const Spacer(flex: 4),
              ],
            ),
          ),
          TimeLineScrollableSheet(cityWeather: cityWeather),
        ],
      ),
    );
  }
}
