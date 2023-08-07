import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/styles/theme.dart';
import '../../application/location_cubit/location_cubit.dart';
import '../../application/theme_cubit/theme_cubit.dart';
import '../detailed_weather_page/detailed_weather_page.dart';
import '../routes/fade_route.dart';
import 'widgets/paginated_list_view.dart';

class CityListPage extends StatelessWidget {
  const CityListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: const PaginatedListView(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: _buildLocationButton(context),
      title: _buildTitle(),
      actions: [_buildThemeButton(context)],
    );
  }

  IconButton _buildLocationButton(BuildContext context) {
    return IconButton(
      onPressed: () => _getLocationAndNavigate(context),
      icon: const Icon(
        Icons.location_on_outlined,
        color: Color(0xFFF25500),
      ),
    );
  }

  Widget _buildTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('UK Weather Hub')],
    );
  }

  Widget _buildThemeButton(BuildContext context) {
    return BlocBuilder<ThemeCubit, AppTheme>(
      builder: (context, state) {
        return IconButton(
          onPressed: () => context.read<ThemeCubit>().toggleTheme(),
          icon: Theme.of(context).brightness == Brightness.dark
              ? const Icon(Icons.light_mode_outlined)
              : const Icon(Icons.dark_mode_outlined),
        );
      },
    );
  }

  Future<void> _getLocationAndNavigate(BuildContext context) async {
    final locationCubit = context.read<LocationCubit>();
    await locationCubit.getLocation();
    final locationState = await locationCubit.stream
        .firstWhere((state) => state != const LocationState.loading());
    locationState.maybeWhen(
      loaded: (cityWeather) {
        Navigator.push(
          context,
          FadeRoute(
            page: DetailedWeatherPage(cityWeather: cityWeather),
          ),
        );
      },
      error: (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to fetch location: $failure')),
        );
      },
      orElse: () {},
    );
  }
}
