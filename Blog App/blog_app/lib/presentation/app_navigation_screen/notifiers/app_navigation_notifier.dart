import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/app_navigation_screen/models/app_navigation_model.dart';
import 'package:equatable/equatable.dart';

part 'app_navigation_state.dart';

final appNavigationNotifier =
    StateNotifierProvider<AppNavigationNotifier, AppNavigationState>(
  (ref) => AppNavigationNotifier(
      AppNavigationState(appNavigationModelObj: AppNavigationModel())),
);

/// A notifier that manages the state of a AppNavigation according to the event that is dispatched to it.
class AppNavigationNotifier extends StateNotifier<AppNavigationState> {
  AppNavigationNotifier(AppNavigationState state) : super(state) {}
}
