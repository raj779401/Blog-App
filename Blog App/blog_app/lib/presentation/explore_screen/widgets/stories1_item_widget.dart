import 'package:flutter/material.dart';
import 'package:blog_app/presentation/explore_screen/models/stories1_item_model.dart';
import 'package:blog_app/core/app_export.dart';

class StoriesItemWidget extends StatelessWidget {
  final Stories1IemModel storiesItemModel;

  StoriesItemWidget(this.storiesItemModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                storiesItemModel.home!,
                style: CustomTextStyles.labelLargeBlack900,
              ),
              SizedBox(height: 6.v),
              Text(
                storiesItemModel.easyToUse!,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 17.v),
              SizedBox(
                width: 235.h,
                child: Row(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          storiesItemModel.duration!,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        height: 3.0,
                        width: 3.0,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 8.v,
                          bottom: 8.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.black900.withOpacity(0.53),
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          storiesItemModel.time!,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgBookmarkIcon,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBlogThumbnail,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(5.0),
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
