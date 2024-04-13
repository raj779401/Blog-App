import 'package:flutter/material.dart';
import 'package:blog_app/presentation/home_screen/models/stories_item_model.dart';
import 'package:blog_app/core/app_export.dart';

class StoriesItemWidget extends StatelessWidget {
  final StoriesItemModel storiesItemModel;

  StoriesItemWidget(this.storiesItemModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
                  SizedBox(height: 6.0),
                  Text(
                    storiesItemModel.easyToUse!,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 17.0),
                  SizedBox(
                    width: 235.0,
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              storiesItemModel.duration!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            height: 3.0,
                            width: 3.0,
                            margin: EdgeInsets.only(
                              left: 8.0,
                              top: 8.0,
                              bottom: 8.0,
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
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              storiesItemModel.time!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmarkIcon,
                          height: 20.0,
                          width: 20.0,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBlogThumbnail,
                          height: 80.0,
                          width: 80.0,
                          radius: BorderRadius.circular(5.0),
                          margin: EdgeInsets.only(
                            left: 20.0,
                            top: 3.0,
                            bottom: 3.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
