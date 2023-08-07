import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather_app/domain/weather/extension/extension.dart';

import '../../../domain/core/entities/city_weather.dart';
import '../../../domain/weather/entities/weather.dart';
import '../../../styles/styles.dart';
import '../../city_list_page/widgets/widgets.dart';

class TimeLineScrollableSheet extends HookWidget {
  const TimeLineScrollableSheet({
    super.key,
    required this.cityWeather,
  });

  final CityWeather cityWeather;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);

    return DraggableScrollableSheet(
      maxChildSize: 0.7,
      initialChildSize: 0.25,
      builder: (BuildContext context, ScrollController scrollController) {
        return NotificationListener<DraggableScrollableNotification>(
          onNotification: (notification) {
            isExpanded.value = notification.extent > 0.45;
            return true;
          },
          child: _buildContainer(context, scrollController, isExpanded),
        );
      },
    );
  }

  Widget _buildContainer(BuildContext context,
      ScrollController scrollController, ValueNotifier<bool> isExpanded) {
    final hourly = cityWeather.weather.hourly;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular($styles.corners.md),
          topRight: Radius.circular($styles.corners.md),
        ),
      ),
      child: ListView.separated(
        separatorBuilder: (_, index) => _buildSeparator(context, index),
        padding: EdgeInsets.all($styles.insets.xs),
        controller: scrollController,
        itemCount: hourly.time.length + 1,
        itemBuilder: (context, index) =>
            _buildItem(context, hourly, index, isExpanded),
      ),
    );
  }

  Widget _buildSeparator(BuildContext context, int index) {
    return index != 0
        ? SizedBox(
            height: $styles.insets.lg,
            child: VerticalDivider(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
              indent: $styles.insets.xs,
              endIndent: $styles.insets.xs,
            ),
          )
        : const SizedBox.shrink();
  }

  Widget _buildItem(BuildContext context, Hourly hourly, int index,
      ValueNotifier<bool> isExpanded) {
    if (index == 0) {
      return _buildHeader(isExpanded);
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(hourly.time[index - 1].to24HourFormat,
                style: $styles.text.caption),
            Text(hourly.temperature2M[index - 1].asCelsius,
                style: $styles.text.h3Lite),
          ],
        ),
        WeatherIcon(
            weatherCode: hourly.weatherCode[index - 1],
            isDay: hourly.time[index - 1].isDayTime),
      ],
    );
  }

  Widget _buildHeader(ValueNotifier<bool> isExpanded) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: $styles.insets.sm),
      child: Column(
        children: [
          Icon(isExpanded.value
              ? Icons.keyboard_arrow_down
              : Icons.keyboard_arrow_up),
          Text('Hourly Weather', style: $styles.text.title1),
        ],
      ),
    );
  }
}
