import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/notification_screen/models/notification_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:blog_app/presentation/notification_screen/models/notification_model.dart';

part 'notification_screen_state.dart';

final notificationsNotifier =
    StateNotifierProvider<NotificationsNotifier, NotificationState>(
  (ref) => NotificationsNotifier(
    NotificationState(
      notificationModelObj: NotificationsModel(
        notificationsItemList: List.generate(
          3,
          (index) => NotificationsItemModel(),
        ),
      ),
    ),
  ),
);

class NotificationsNotifier extends StateNotifier<NotificationState> {
  NotificationsNotifier(NotificationState state) : super(state);
}
