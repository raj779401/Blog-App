import 'package:flutter/material.dart';
import 'package:blog_app/core/utils/size_utils.dart';
import 'package:blog_app/theme/theme_helper.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeGray600 =>
      ThemeData().textTheme.bodyLarge!.copyWith(
            color: appTheme.gray600,
            fontSize: 16.fSize,
          );

  static TextStyle get bodyMediumBlack900 =>
      ThemeData().textTheme.bodyMedium!.copyWith(
            color: appTheme.black900.withOpacity(0.66),
          );

  static TextStyle get bodyMediumGray600 =>
      ThemeData().textTheme.bodyMedium!.copyWith(
            color: appTheme.gray600,
          );

  static TextStyle get bodyMediumOnPrimary =>
      ThemeData().textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          );

  static TextStyle get bodyMediumPrimary =>
      ThemeData().textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.primary,
          );

  static TextStyle get bodyMediumWhiteA700 =>
      ThemeData().textTheme.bodyMedium!.copyWith(
            color: appTheme.whiteA700,
          );

  static TextStyle get bodyMediumFF0000 =>
      ThemeData().textTheme.bodyMedium!.copyWith(
            color: Color(0xFF0000),
          );

  static TextStyle get bodyMediumFF818283 =>
      ThemeData().textTheme.bodyMedium!.copyWith(
            color: Color(0xFF818283),
          );

  static TextStyle get bodySmallBlack900 =>
      ThemeData().textTheme.bodySmall!.copyWith(
            color: appTheme.black900,
          );

  static TextStyle get bodySmallFF40BFFF =>
      ThemeData().textTheme.bodySmall!.copyWith(
            color: Color(0xFF40BFFF),
          );

  static TextStyle get bodySmallFF818283 =>
      ThemeData().textTheme.bodySmall!.copyWith(
            color: Color(0xFF818283),
          );

  // Label text style
  static TextStyle get labelLargeBlack900 =>
      ThemeData().textTheme.labelLarge!.copyWith(
            color: appTheme.black900,
            fontWeight: FontWeight.w600,
          );

  // Title text style
  static TextStyle get titleMediumBlack900 =>
      ThemeData().textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          );

  static TextStyle get titleMediumBlack90018 =>
      ThemeData().textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
            fontSize: 18.fSize,
          );

  static TextStyle get titleMediumBlack900Medium =>
      ThemeData().textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
            fontSize: 18.fSize,
            fontWeight: FontWeight.w700,
          );

  static TextStyle get titleMediumWhiteA700 =>
      ThemeData().textTheme.titleMedium!.copyWith(
            color: appTheme.whiteA700,
            fontSize: 18.fSize,
          );

  static TextStyle get titleSmallBlack900 =>
      ThemeData().textTheme.titleSmall!.copyWith(
            color: appTheme.black900,
            fontWeight: FontWeight.w600,
          );

  static TextStyle get titleSmallBlack9001 =>
      ThemeData().textTheme.titleSmall!.copyWith(
            color: appTheme.black900,
          );

  static TextStyle get titleSmallGray600 =>
      ThemeData().textTheme.titleSmall!.copyWith(
            color: appTheme.gray600,
          );

  static TextStyle get titleSmallOnPrimary =>
      ThemeData().textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          );

  static TextStyle get titleSmallSecondaryContainer =>
      ThemeData().textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.secondaryContainer,
          );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(fontFamily: 'Poppins');
  }
}
