import 'package:blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/terms_and_condtions_screen/notifier/terms_and_conditions_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TermsAndConditionsScreen extends ConsumerStatefulWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  TermsAndConditionsScreenState createState() =>
      TermsAndConditionsScreenState();
}

class TermsAndConditionsScreenState
    extends ConsumerState<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width as double?,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 1.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_terms_and_conditions",
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  SizedBox(height: 13.0),
                  Text(
                    "msg_effective september".tr,
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                  SizedBox(height: 24.0),
                  Text(
                    "msg_you can see our".tr,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  SizedBox(height: 23.0),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.0,
                      margin: EdgeInsets.only(right: 23.0),
                      child: Text(
                        "msg_lorem ipsum dolor5".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900
                            .copyWith(height: 1.50),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.0),
                  Opacity(
                    opacity: 0.87,
                    child: SizedBox(
                      width: 335.0,
                      child: Text(
                        "msg_lorem ipsum dolor4".tr,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900
                            .copyWith(height: 1.50),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.0),
                  Opacity(
                    opacity: 0.87,
                    child: SizedBox(
                      width: 335.0,
                      child: Text(
                        "msg_lorem ipsum_d010r4",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900
                            .copyWith(height: 1.50),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.0),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.0,
                      margin: EdgeInsets.only(right: 23.0),
                      child: Text(
                        "msg_lorem ipsum_d010r5",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900
                            .copyWith(height: 1.50),
                      ),
                    ),
                  ),
                  SizedBox(height: 23.0),
                  Text(
                    "msg_your account_and",
                    style: CustomTextStyles.titleMediumBlack900Medium,
                  ),
                  SizedBox(height: 22.0),
                  Opacity(
                    opacity: 0.87,
                    child: Container(
                      width: 311.0,
                      margin: EdgeInsets.only(right: 23.0),
                      child: Text(
                        "msg_lorem ipsum_d010r5",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900
                            .copyWith(height: 1.50),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.0),
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
        AppbarTrai1ingIconbutton(
          imagepath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        ),
      ],
    );
  }
}
