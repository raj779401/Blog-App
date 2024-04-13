import 'package:blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:blog_app/widgets/app_bar/appbar_title.dart';
import 'package:blog_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:blog_app/widgets/custom_search_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/explore_screen/widgets/stories1_item_widget.dart';
import 'package:blog_app/presentation/explore_screen/models/stories1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/explore_screen/notifiers/explore_notifier.dart';

class ExploreScreen extends ConsumerStatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  ExploreScreenState createState() => ExploreScreenState();
}

class ExploreScreenState extends ConsumerState<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              _buildTopBar(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Divider(),
                    ),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "msg_recommended for",
                          style: CustomTextStyles.titleSmallBlack900,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    _buildStories(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomAppBar(
            height: 36.v,
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 3.v,
                bottom: 8.v,
              ),
            ),
            title: AppbarTitle(
              text: "Ibl explore",
              margin: EdgeInsets.only(left: 16.0),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgFrame11,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 3.v,
                  right: 8.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgRewind,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 3.v,
                  right: 28.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Consumer(
            builder: (context, ref, _) {
              return CustomSearchView(
                controller: ref.watch(exploreNotifier).searchController,
                hintText: "Ibl search",
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStories(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.5.v),
                  child: SizedBox(
                    width: 335.h,
                    child: Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: appTheme.gray300.withOpacity(0.53),
                    ),
                  ),
                ),
              );
            },
            itemCount: ref
                    .watch(exploreNotifier)
                    .exploreModelObj
                    ?.stories1ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Stories1IemModel model = ref
                      .watch(exploreNotifier)
                      .exploreModelObj
                      ?.stories1ItemList[index] ??
                  Stories1IemModel();
              return StoriesItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
