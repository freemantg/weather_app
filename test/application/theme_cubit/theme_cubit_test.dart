import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/application/cubits.dart';
import 'package:weather_app/styles/theme.dart';


void main() {
  group('ThemeCubit', () {
    late ThemeCubit themeCubit;

    setUp(() {
      themeCubit = ThemeCubit();
    });

    tearDown(() {
      themeCubit.close();
    });

    test('initial state is of type AppTheme', () {
      expect(themeCubit.state, isA<AppTheme>());
    });

    blocTest<ThemeCubit, AppTheme>(
      'emits a state of type AppTheme when toggled from light',
      build: () => themeCubit,
      act: (cubit) => cubit.toggleTheme(),
      expect: () => [isA<AppTheme>()],
    );

    blocTest<ThemeCubit, AppTheme>(
      'emits a state of type AppTheme when toggled from dark',
      build: () {
        themeCubit.emit(
            AppTheme.fromType(ThemeType.dark)); // Set initial state to dark
        return themeCubit;
      },
      act: (cubit) => cubit.toggleTheme(),
      expect: () => [isA<AppTheme>()],
    );
  });
}
