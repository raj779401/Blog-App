part of 'notification_screen_notifier.dart';

/// Represents the state of Notifications in the application.
class NotificationState extends Equatable {
  final NotificationsModel? notificationModelObj;

  NotificationState({this.notificationModelObj});

  @override
  List<Object?> get props => [notificationModelObj];

  NotificationState copyWith({NotificationsModel? notificationModelObj}) {
    return NotificationState(
      notificationModelObj: notificationModelObj ?? this.notificationModelObj,
    );
  }
}
