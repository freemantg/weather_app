import 'package:bloc/bloc.dart';

import '../../styles/theme.dart';

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit() : super(AppTheme.fromType(ThemeType.light));

  void toggleTheme() {
    emit(
      AppTheme.fromType(
        state.isDark ? ThemeType.light : ThemeType.dark,
      ),
    );
  }
}
