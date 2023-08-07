import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/domain/weather/extension/extension.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({
    super.key,
    required this.weatherCode,
    required this.isDay,
    this.size = 24.0,
  });

  final int weatherCode;
  final bool isDay;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(weatherCode.toWeatherAssetPath(isDay)),
    );
  }
}
