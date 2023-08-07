import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension WeatherCodeX on int {
  String toWeatherDescription() {
    const Map<int, String> weatherCodes = {
      0: 'Clear sky',
      1: 'Mainly clear',
      2: 'Partly cloudy',
      3: 'Overcast',
      45: 'Fog',
      48: 'Depositing rime fog',
      51: 'Drizzle: Light',
      53: 'Drizzle: Moderate',
      55: 'Drizzle: Dense intensity',
      56: 'Freezing Drizzle: Light',
      57: 'Freezing Drizzle: Dense intensity',
      61: 'Rain: Slight',
      63: 'Rain: Moderate',
      65: 'Rain: Heavy intensity',
      66: 'Freezing Rain: Light',
      67: 'Freezing Rain: Heavy intensity',
      71: 'Snow fall: Slight',
      73: 'Snow fall: Moderate',
      75: 'Snow fall: Heavy intensity',
      77: 'Snow grains',
      80: 'Rain showers: Slight',
      81: 'Rain showers: Moderate',
      82: 'Rain showers: Violent',
      85: 'Snow showers slight',
      86: 'Snow showers heavy',
      95: 'Thunderstorm: Slight or moderate',
      96: 'Thunderstorm with slight hail',
      99: 'Thunderstorm with heavy hail',
    };

    if (weatherCodes.containsKey(this)) {
      return weatherCodes[this]!;
    } else {
      return 'Unknown weather code';
    }
  }

  String toShortWeatherDescription(bool isDayTime) {
    if ([0, 1].contains(this)) {
      return isDayTime ? 'Sunny' : 'Clear';
    } else if ([2].contains(this)) {
      return isDayTime ? 'Partly Cloudy' : 'Cloudy Night';
    } else if ([3].contains(this)) {
      return 'Cloudy';
    } else if ([45, 48].contains(this)) {
      return 'Foggy';
    } else if (this >= 51 && this <= 57) {
      return 'Drizzly';
    } else if (this >= 61 && this <= 67) {
      return 'Rainy';
    } else if (this >= 71 && this <= 77) {
      return 'Snowy';
    } else if ([80, 81, 82].contains(this)) {
      return 'Showers';
    } else if ([85, 86].contains(this)) {
      return 'Snowy';
    } else if ([95, 96, 99].contains(this)) {
      return 'Stormy';
    } else {
      return 'Unknown';
    }
  }

  Color toWeatherColor(ColorScheme colorScheme, bool isDayTime) {
    if ([0, 1].contains(this)) {
      return isDayTime ? const Color(0xFFF25500) : const Color(0xFFFEBC05);
    } else if (this >= 51 && this <= 57 || this >= 61 && this <= 67) {
      return const Color(0xFF4690C9);
    } else {
      return colorScheme.onSurface;
    }
  }

  String toWeatherAssetPath(bool isDayTime) {
    String description = toShortWeatherDescription(isDayTime);
    String assetFileName;

    switch (description) {
      case 'Sunny':
        assetFileName = 'sunny.svg';
        break;
      case 'Clear':
        assetFileName = 'clear.svg';
        break;
      case 'Partly Cloudy':
      case 'Cloudy':
        assetFileName = 'cloudy.svg';
        break;
      case 'Cloudy Night':
        assetFileName = 'cloudy-night.svg';
        break;
      case 'Foggy':
        assetFileName = 'foggy.svg';
        break;
      case 'Drizzly':
      case 'Rainy':
      case 'Showers':
        assetFileName = 'rainy.svg';
        break;
      case 'Snowy':
        assetFileName = 'snowy.svg';
        break;
      case 'Stormy':
        assetFileName = 'stormy.svg';
        break;
      default:
        assetFileName = 'unknown.svg';
        break;
    }

    return 'assets/weather/$assetFileName';
  }

  String toWeatherGreeting(bool isDay) {
    return isDay
        ? dayWeatherGreetings[this] ?? 'Day weather information not available.'
        : nightWeatherGreetings[this] ??
            'Night weather information not available.';
  }
}

extension TemperatureExtension on double {
  String get asCelsius => '${round()}°';
}

extension TimeFormatExtension on String {
  String get to24HourFormat {
    try {
      final dateTime = DateFormat("yyyy-MM-dd'T'HH:mm").parse(this);
      return DateFormat('HH:mm').format(dateTime);
    } catch (e) {
      return '';
    }
  }

  String get toDayFormat {
    try {
      final dateTime = DateFormat("yyyy-MM-dd'T'HH:mm").parse(this);
      return DateFormat('dd.MM EEE').format(dateTime);
    } catch (e) {
      return '';
    }
  }

  bool get isDayTime {
    try {
      final dateTime = DateFormat("yyyy-MM-dd'T'HH:mm").parse(this);
      final hour = dateTime.hour;
      return hour >= 6 && hour < 20;
    } catch (e) {
      return false;
    }
  }
}

const Map<int, String> dayWeatherGreetings = {
  0: 'The sky is clear and beautiful today!',
  1: 'It\'s mainly clear outside.\nEnjoy the sunshine!',
  2: 'A few clouds here and there, but still a nice day!',
  3: 'It\'s looking a bit overcast, but still pleasant.',
  45: 'Watch out for fog on your drive today.',
  48: 'There\'s depositing rime fog, so be careful out there.',
  51: 'It\'s lightly drizzling.\nDon\'t forget your umbrella!',
  53: 'Moderate drizzle outside.\nStay dry!',
  55: 'Dense drizzle out there.\nPerfect weather for staying in with a book!',
  56: 'Light freezing drizzle today.\nBundle up!',
  57: 'Dense freezing drizzle outside.\nStay warm and safe!',
  61: 'A slight rain today.\nYou might want an umbrella.',
  63: 'Moderate rain outside.\nKeep dry and carry an umbrella!',
  65: 'It\'s pouring out there!\nStay dry!',
  66: 'Light freezing rain today.\nBe careful if you\'re driving!',
  67: 'Heavy freezing rain outside.\nIt\'s best to stay indoors!',
  71: 'A slight snowfall.\nEnjoy the winter wonderland!',
  73: 'Moderate snowfall today.\nTime for some hot cocoa!',
  75: 'Heavy snow outside!\nStay warm and cozy.',
  77: 'Snow grains are falling.\nIt\'s a unique sight!',
  80: 'Slight rain showers.\nYou might want to carry an umbrella.',
  81: 'Moderate rain showers.\nDon\'t forget your raincoat!',
  82: 'Violent rain showers outside.\nStay safe!',
  85: 'Slight snow showers.\nEnjoy the snowy scenery!',
  86: 'Heavy snow showers.\nIt\'s a winter wonderland out there!',
  95: 'A slight or moderate thunderstorm.\nStay safe indoors!',
  96: 'Thunderstorm with slight hail.\nStay inside and keep warm!',
  99: 'Thunderstorm with heavy hail.\nStay safe inside!',
};

const Map<int, String> nightWeatherGreetings = {
  0: 'A clear and starlit night.\nEnjoy the serenity!',
  1: 'Mainly clear skies tonight.\nPerfect for stargazing!',
  2: 'A few clouds in the sky tonight, but still a peaceful night.',
  3: 'The night is overcast, but still calm and quiet.',
  45: 'Watch out for fog tonight.\nDrive safely!',
  48: 'There\'s depositing rime fog tonight, so be careful out there.',
  51: 'Light drizzling tonight.\nEnjoy the calming sound of rain!',
  53: 'Moderate drizzle tonight.\nStay cozy indoors!',
  55: 'Dense drizzle tonight.\nA perfect night for a warm tea!',
  56: 'Light freezing drizzle tonight.\nBundle up!',
  57: 'Dense freezing drizzle tonight.\nStay warm indoors!',
  61: 'A slight rain tonight.\nEnjoy the soothing raindrops!',
  63: 'Moderate rain tonight.\nKeep dry if you go out!',
  65: 'Heavy rain tonight.\nStay dry and safe indoors!',
  66: 'Light freezing rain tonight.\nBe cautious if you\'re driving!',
  67: 'Heavy freezing rain tonight.\nIt\'s best to stay indoors!',
  71: 'Slight snowfall tonight.\nEnjoy the silent snow!',
  73: 'Moderate snowfall tonight.\nTime for some warm cocoa!',
  75: 'Heavy snow tonight!\nStay warm and cozy.',
  77: 'Snow grains are falling tonight.\nEnjoy the wintry scene!',
  80: 'Slight rain showers tonight.\nCarry an umbrella if needed.',
  81: 'Moderate rain showers tonight.\nStay dry!',
  82: 'Violent rain showers tonight.\nStay safe indoors!',
  85: 'Slight snow showers tonight.\nEnjoy the snowy night!',
  86: 'Heavy snow showers tonight.\nIt\'s a winter wonderland out there!',
  95: 'A slight or moderate thunderstorm tonight.\nStay safe indoors!',
  96: 'Thunderstorm with slight hail tonight.\nStay inside and keep warm!',
  99: 'Thunderstorm with heavy hail tonight.\nStay safe inside!',
};
