import 'package:blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:blog_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:blog_app/widgets/app_bar/appbar_title.dart';
import 'widgets/peoplelist_item_widget.dart';
import 'models/peoplelist_item_model.dart';
import 'widgets/stories_item_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'models/stories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/home_screen/notifiers/home_notifier.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 22.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPeopleList(context),
              SizedBox(height: 18.v),
              Opacity(
                opacity: 0.5,
                child: Divider(),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "Ibl top _ stories",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
              ),
              SizedBox(height: 20.v),
              _buildStories(context),

              /// Section Widget
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      title: AppbarTitle(
        text: "Ibl home",
        margin: EdgeInsets.only(
          left: 16.h,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame11,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 16.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 35.h,
          ),
        ),

        /// Section Widget
      ],
    );
  }

  Widget _buildPeopleList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 125.v,
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.peopleListItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                PeoplelistItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.peopleListItemList[index] ??
                    PeoplelistItemModel();
                return PeopleListItemWidget(model);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildStories(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
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
                        height: 1.v,
                        thickness: 1,
                        color: appTheme.gray300.withOpacity(0.53),
                      ),
                    ),
                  ),
                );
              },
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.storiesItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                StoriesItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.storiesItemList[index] ??
                    StoriesItemModel();
                return StoriesItemWidget(model);
              },
            );
          },
        ),
      ),
    );
  }
}
