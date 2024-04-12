import 'package:equatable/equatable.dart';
import 'package:blog_app/presentation/notification_screen/models/notification_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel extends Equatable {
  final List<NotificationsItemModel> notificationsItemList;

  const NotificationsModel({required this.notificationsItemList});

  NotificationsModel copyWith(
      {List<NotificationsItemModel>? notificationsItemList}) {
    return NotificationsModel(
      notificationsItemList:
          notificationsItemList ?? this.notificationsItemList,
    );
  }

  @override
  List<Object?> get props => [notificationsItemList];
}
