import 'package:blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:blog_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/search_topics_screen/notifiers/search_topics_notifier.dart';

class SearchTopicsScreen extends ConsumerStatefulWidget {
  const SearchTopicsScreen({Key? key}) : super(key: key);

  @override
  SearchTopicsScreenState createState() => SearchTopicsScreenState();
}

class SearchTopicsScreenState extends ConsumerState<SearchTopicsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ibl explore _ topics",
                style: CustomTextStyles.titleMediumBlack900,
              ),
              SizedBox(height: 18.0),
              Text(
                "Ibl books",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 12.v),
              Text(
                "Ibl fiction",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 13.v),
              Text(
                "Ibl comics",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 13.v),
              Text(
                "Ibl art",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 14.v),
              Text(
                "Ibl visual_design",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 13.v),
              Text(
                "Ibl technology",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 10.v),
              Text(
                "Ibl science",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 13.v),
              Text(
                "Ibl business",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 15.v),
              Text(
                "Ibl_psychology",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 12.v),
              Text(
                "Ibl_creativity",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 10.v),
              Text(
                "Ibl education",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 13.v),
              Text(
                "Ibl feminism",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_artificial_intelligence",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 10.v),
              Text(
                "Ibl health",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 15.v),
              Text(
                "Ibl_design",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 36.0,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.0,
          top: 20.0,
          bottom: 20.0,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      title: Consumer(
        builder: (context, ref, _) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 10.0),
            hintText: "Ibl search",
            controller: ref.watch(searchTopicsNotifier).searchController,
          );
        },
      ),
    );
  }

  void onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
