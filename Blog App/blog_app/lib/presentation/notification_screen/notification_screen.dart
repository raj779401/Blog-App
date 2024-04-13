import 'package:blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:blog_app/presentation/notification_screen/widgets/notification_item_widget.dart';
import 'package:blog_app/presentation/notification_screen/models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/notification_screen/notifiers/notification_screen_notifier.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 20.v,
            right: 20.h,
          ),
          child: Consumer(
            builder: (context, ref, _) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Opacity(
                    opacity: 0.1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0.v),
                      child: SizedBox(
                        width: 335.h,
                        child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.black900.withOpacity(0.39),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: ref
                        .watch(notificationsNotifier)
                        .notificationModelObj
                        ?.notificationsItemList
                        ?.length ??
                    0,
                itemBuilder: (context, index) {
                  NotificationsItemModel model = ref
                          .watch(notificationsNotifier)
                          .notificationModelObj
                          ?.notificationsItemList[index] ??
                      NotificationsItemModel();
                  return NotificationsItemWidget(model);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 18.v,
          bottom: 21.v,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      title: AppbarSubtitle(
        text: "Ibl activity",
        margin: EdgeInsets.only(left: 133.h),
      ),
    );
  }

  /// Navigates back to the previous screen.
  void onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
