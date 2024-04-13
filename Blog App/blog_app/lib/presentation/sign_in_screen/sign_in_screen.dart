import 'package:blog_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/routes/app_routes.dart';
import 'package:blog_app/domain/facebookauth/facebook_auth_helper.dart';
import 'package:blog_app/domain/googleauth/google_auth_helper.dart';
import 'package:blog_app/presentation/sign_in_screen/notifiers/sign_in_notifier.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends ConsumerState<SignInScreen> {
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
              SizedBox(height: 39.0.v),
              Text(
                "Ibl welcome back",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 20.0.v),
              _buildSignInWithGoogle(context),
              SizedBox(height: 14.0.v),
              buildSignInWithFacebook(context),
              SizedBox(height: 14.0.v),
              _buildSignInWithTwitter(context),
              SizedBox(height: 14.0.v),
              _buildSignInWithApple(context),
              SizedBox(height: 39.0.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.0.v),
                    child: Text(
                      "msg_don't_have_an_account",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapTxtSignUp(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0.h),
                      child: Text(
                        "lbl sign_up",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.0.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle1,
          height: 20.0.adaptSize,
          width: 20.0.adaptSize,
        ),
      ),
      onPressed: () {
        onTapSignInWithGoogle(context);
      },
    );
  }

  Widget buildSignInWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.0.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook1,
          height: 20.0.adaptSize,
          width: 20.0.adaptSize,
        ),
      ),
      onPressed: () {
        onTapSignInWithFacebook(context);
      },
    );
  }

  Widget _buildSignInWithTwitter(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_twitter",
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

  Widget _buildSignInWithApple(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_apple",
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

  onTapSignInWithGoogle(BuildContext context) async {
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

  onTapSignInWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      // TODO: Actions to be performed after sign in
    }).catchError((onError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(onError.toString())),
      );
    });
  }

  void onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signUpScreen);
  }
}
