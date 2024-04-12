import 'package:blog_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/sign_up_screen/notifiers/sign_up_notifier.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDhiwiseBlackMonogram,
                height: 59.0.adaptSize,
                width: 59.0.adaptSize,
              ),
              SizedBox(height: 43.0.v),
              Text(
                "Ibl register _ now".tr,
                style: theme.textTheme.headlineLarge,
              ),
              _buildSignUpWithGoogle(context),
              SizedBox(height: 14.0.v),
              _buildSignUpWithFacebook(context),
              SizedBox(height: 14.0.v),
              _buildSignUpWithTwitter(context),
              SizedBox(height: 14.0.v),
              _buildSignUpWithApple(context),
              SizedBox(height: 41.0.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 44.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_already_have_an".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapTxtSignIn(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "Ibl_sign in",
                          style: CustomTextStyles.bodyMediumPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Container(
                width: 318.0.h,
                margin: EdgeInsets.only(left: 4.0.h, right: 5.0.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        "msg_by_signing_up_you2".tr,
                        style: CustomTextStyles.bodySmallff818283,
                      ),
                      TextSpan(
                        text: "msg_terms_of_service",
                        style: CustomTextStyles.bodySmallff4Obfff,
                      ),
                      TextSpan(
                        text: "msg_and_acknowledge".tr,
                        style: CustomTextStyles.bodySmallff818283.copyWith(
                          height: 1.50,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_privacy_policy",
                        style: CustomTextStyles.bodySmallff4Obfff,
                      ),
                      TextSpan(
                        style: CustomTextStyles.bodySmallff818283,
                        text: "lbl_applies_to_you",
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSignUpWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
      "msg_sign_up_with_google".tr,
      text: "msg_sign_up_with_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.0.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle1,
          height: 20.0.adaptSize,
          width: 20.0.adaptSize,
        ),
      ),
      onPressed: () {
        onTapSignUpWithGoogle(context);
      },
    );
  }

  Widget _buildSignUpWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
      "msg_sign_up_with_facebook".tr,
      text: "msg_sign_up_with_facebook".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.0.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook1,
          height: 20.0.adaptSize,
          width: 20.0.adaptSize,
        ),
      ),
      onPressed: () {
        onTapSignUpWithFacebook(context);
      },
    );
  }

  Widget _buildSignUpWithTwitter(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_up_with_twitter".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.0.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgTwitter1,
          height: 20.0.adaptSize,
          width: 20.0.adaptSize,
        ),
      ),
    );
  }

  Widget _buildSignUpWithApple(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_up_with_apple".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.0.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgAppleblackLogo1,
          height: 20.0.adaptSize,
          width: 20.0.adaptSize,
        ),
      ),
    );
  }

  onTapSignUpWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        // TODO: Actions to be performed after sign in
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('User data is empty')),
        );
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(onError.toString())),
      );
    });
  }

  onTapSignUpWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      // TODO: Actions to be performed after sign in
    }).catchError((onError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(onError.toString())),
      );
    });
  }

  void onTapTxtSignIn(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signInScreen);
  }
}
