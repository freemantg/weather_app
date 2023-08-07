import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/cubits.dart';
import 'core/core.dart';
import 'presentation/city_list_page/city_list_page.dart';
import 'styles/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => serviceLocator<ThemeCubit>()),
        BlocProvider(create: (_) => serviceLocator<LocationCubit>()),
        BlocProvider(
          create: (_) => serviceLocator<CityWeatherCubit>()..getCityWeathers(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme.themeData,
            home: const CityListPage(),
          );
        },
      ),
    );
  }
}