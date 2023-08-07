import 'package:flutter/material.dart';

import '../../city_list_page/widgets/widgets.dart';


class WeatherBackground extends StatelessWidget {
  const WeatherBackground({
    super.key,
    required this.weatherCode,
    required this.isDay,
  });

  final int weatherCode;
  final bool isDay;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -MediaQuery.of(context).size.height / 4,
      right: -MediaQuery.of(context).size.height / 4,
      child: WeatherIcon(
        weatherCode: weatherCode,
        isDay: isDay,
        size: MediaQuery.sizeOf(context).height / 2,
      ),
    );
  }
}
