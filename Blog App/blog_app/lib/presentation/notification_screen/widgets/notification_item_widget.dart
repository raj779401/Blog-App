import 'package:blog_app/presentation/notification_screen/models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';

class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemModel notificationsItemModelObj;

  NotificationsItemWidget(this.notificationsItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash93bshrwb1yq,
          height: 52.adaptSize,
          width: 52.adaptSize,
          radius: BorderRadius.circular(26.h),
          margin: EdgeInsets.only(bottom: 12.v),
        ),
        Expanded(
          child: Container(
            width: 230.h,
            margin: EdgeInsets.only(left: 11.h),
            child: RichText(
              text: Textspan(
                children: [
                  Textspan(
                    text: "Ibl bezaleel nwabia".tr,
                    style: CustomTextStyles.bodyMediumFF0000,
                  ),
                  Textspan(
                    text: "Ibl clapped _ for",
                    style: CustomTextStyles.bodyMediumFF818283,
                  ),
                  Textspan(
                      text: "msg_7_things_you need".tr,
                      style: CustomTextStyles.bodyMediumFF0000),
                  Textspan(
                    text: "Ibl 5 nov",
                    style: CustomTextStyles.bodyMediumFF818283,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
