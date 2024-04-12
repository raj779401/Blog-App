import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/core/utils/pref_utils.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/theme/theme_helper.dart';
part 'theme_state.dart';

final themeNotifier = StateNotifierProvider<ThemeNotifier, ThemeState>(
  (ref) => ThemeNotifier(
    ThemeState(themeType: PrefUtils.getThemeData()),
  ),
);

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier(ThemeState state) : super(state);

  changeTheme(String themeType) async {
    PrefUtils().setThemeData(themeType);
    state = state.copyWith(themeType: PrefUtils.getThemeData());
  }
}
