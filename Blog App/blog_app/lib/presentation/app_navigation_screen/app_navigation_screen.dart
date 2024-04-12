import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/app_navigation_screen/notifiers/app_navigation_notifier.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.white,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ibl home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ibl sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ibl sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "lbl interests".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.interestsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "lbl search_topics".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchTopicsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "msg_interests_people".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.interestsPeopleTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ibl explore".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ibl_blog",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blogScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "msg_terms and_conditions2".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.termsAndConditionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ibl privacy_policy3",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ibl notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAppNavigation(BuildContext context) {
  return Container(
    decoration: AppDecoration.white,
    child: Column(
      children: [
        SizedBox(height: 10.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "Ibl_app_navigation".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(height: 10.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "msg_check_your_app_s".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.blueGray400,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(height: 5.v),
        Divider(
          height: 1.v,
          thickness: 1.v,
          color: appTheme.black900,
        ),
      ],
    ),
  );
}

Widget _buildScreenTitle(BuildContext context,
    {required String screenTitle, Function? onTapScreenTitle}) {
  return GestureDetector(
    onTap: () {
      onTapScreenTitle?.call();
    },
    child: Container(
      decoration: AppDecoration.white,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(height: 10.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.blueGray400,
          ),
        ],
      ),
    ),
  );
}

void onTapScreenTitle(String routeName) {
  NavigatorService.pushNamed(routeName);
}
