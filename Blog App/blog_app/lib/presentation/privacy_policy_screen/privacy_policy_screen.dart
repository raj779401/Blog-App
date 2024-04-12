import 'package:blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/privacy_policy_screen/notifiers/privacy_policy_notifier.dart';

class PrivacyPolicyScreen extends ConsumerStatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  PrivacyPolicyScreenState createState() => PrivacyPolicyScreenState();
}

class PrivacyPolicyScreenState extends ConsumerState<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width as double?,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 3.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      'lbl_privacy_policy2'.tr,
                      style: CustomTextStyles.titleMediumBlack90018,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      'msg_effective september'.tr,
                      style: CustomTextStyles.titleMediumBlack90018,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      'msg_you can see our'.tr,
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      'msg_lorem ipsum dolor5'.tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 335.h,
                      margin: EdgeInsets.symmetric(
                        horizontal: 4.h,
                        vertical: 22.v,
                      ),
                      child: Text(
                        'msg_lorem ipsum dolor4'.tr,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 335.h,
                      margin: EdgeInsets.symmetric(
                        horizontal: 4.h,
                        vertical: 22.v,
                      ),
                      child: Text(
                        'msg_lorem ipsum dolor4'.tr,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 27.h,
                      ),
                      child: Text(
                        'msg_lorem ipsum dolor5'.tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 99.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingIconbutton(
          imagepath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }
}
