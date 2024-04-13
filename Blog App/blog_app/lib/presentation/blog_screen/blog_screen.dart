import 'package:blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/blog_screen/notifiers/blog_screen_notifier.dart';

class BlogScreen extends ConsumerStatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  BlogScreenState createState() => BlogScreenState();
}

class BlogScreenState extends ConsumerState<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Retrieve theme from context
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align content start
            children: [
              _buildFrameFortyFive(context),
              SizedBox(height: 18.h),
              Container(
                width: 265.0,
                margin: EdgeInsets.only(right: 69.h),
                child: Text(
                  "msg_lorem ipsum dolor3",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(height: 1.50),
                ),
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 335.h,
                child: Text(
                  "msg_lorem ipsum dolor4",
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBlack900
                      .copyWith(height: 1.50),
                ),
              ),
              SizedBox(height: 18.0),
              CustomImageView(
                imagePath: ImageConstant.imgBlogThumbnail,
                height: 174.v,
                width: 335.h,
                radius: BorderRadius.circular(5.0),
              ),
              SizedBox(height: 17.h),
              Text(
                "msg_image_credit lorem",
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 23.h),
              Container(
                width: 298.0,
                margin: EdgeInsets.only(right: 36.h),
                child: Text(
                  "msg_duis aute irure",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(height: 1.50),
                ),
              ),
              SizedBox(height: 5.v),
              // Section Widget
            ],
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
          margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
        ),
      ],
    );
  }

  Widget _buildFrameFortyFive(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "msg_john_doe_in_lorem",
          style: CustomTextStyles.titleSmallOnPrimary,
        ),
        Spacer(),
        Container(
          height: 3.adaptSize,
          width: 3.adaptSize,
          margin: EdgeInsets.only(top: 8.v, bottom: 10.v),
          decoration: BoxDecoration(
            color: appTheme.gray600,
            borderRadius: BorderRadius.circular(1.5),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            "Ibl 29_ju1y",
            style: CustomTextStyles.titleSmallGray600,
          ),
        ),
      ],
    );
  }
}
