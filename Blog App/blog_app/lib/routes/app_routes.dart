import 'package:flutter/material.dart';
import 'package:blog_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:blog_app/presentation/blog_screen/blog_screen.dart';
import 'package:blog_app/presentation/explore_screen/explore_screen.dart';
import 'package:blog_app/presentation/home_screen/home_screen.dart';
import 'package:blog_app/presentation/interests_screen/interests_screen.dart';
import 'package:blog_app/presentation/notification_screen/notification_screen.dart';
import 'package:blog_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:blog_app/presentation/search_topics_screen/search_topics_screen.dart';
import 'package:blog_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:blog_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:blog_app/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String signInScreen = '/sign_in_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String interestsScreen = '/interests_screen';
  static const String searchTopicsScreen = '/search_topics_screen';
  static const String interestsTopicsPage = '/interests_topics_page';
  static const String interestsPeoplePage = '/interests_people_page';
  static const String interestsPeopleTabContainerScreen =
      '/interests_people_tab_container_screen';
  static const String exploreScreen = '/explore_screen';
  static const String blogScreen = '/blog_screen';
  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';
  static const String privacyPolicyScreen = '/privacy_policy_screen';
  static const String notificationsScreen = '/notifications_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    // interestsScreen: (context) => InterestsScreen(),
    searchTopicsScreen: (context) => SearchTopicsScreen(),
    // interestsPeopleTabContainerScreen: (context) => InterestsPeopleTabContainerScreen(),
    exploreScreen: (context) => ExploreScreen(),
    blogScreen: (context) => BlogScreen(),
    termsAndConditionsScreen: (context) => TermsAndConditionsScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HomeScreen(),
  };
}
