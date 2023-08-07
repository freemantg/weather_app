import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:weather_app/styles/styles.dart';

import '../../../application/cubits.dart';
import 'city_weather_list_tile.dart';

class PaginatedListView extends HookWidget {
  const PaginatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    final canLoadNextPage = useState(false);

    return BlocConsumer<CityWeatherCubit, CityWeatherState>(
      listener: (context, state) {
        state.map(
          initial: (_) => canLoadNextPage.value = true,
          loading: (_) => canLoadNextPage.value = false,
          loaded: (_) => canLoadNextPage.value = true,
          error: (_) => canLoadNextPage.value = false,
        );
      },
      builder: (context, state) {
        return _CityWeatherListView(
          state,
          canLoadNextPage.value,
        );
      },
    );
  }
}

class _CityWeatherListView extends HookWidget {
  const _CityWeatherListView(this.state, this.canLoadNextPage);

  final CityWeatherState state;
  final bool canLoadNextPage;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final cityWeathers = useMemoized(
      () => state.map(
        initial: (_) => [],
        loading: (_) => _.cityWeathers,
        loaded: (_) => _.cityWeathers,
        error: (_) => _.cityWeathers,
      ),
      [state],
    );

    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent * 0.70) {
          if (canLoadNextPage) {
            context.read<CityWeatherCubit>().getCityWeathers();
          }
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [canLoadNextPage]);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.xs),
      child: ListView.separated(
        separatorBuilder: (context, index) => VSpace(size: $styles.insets.sm),
        controller: scrollController,
        itemCount: cityWeathers.length,
        itemBuilder: (context, index) {
          return CityWeatherListTile(cityWeather: cityWeathers[index]);
        },
      ),
    );
  }
}
