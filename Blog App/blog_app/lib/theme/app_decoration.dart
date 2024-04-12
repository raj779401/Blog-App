import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder26 => BorderRadius.circular(26.0);
  static BorderRadius get circleBorder30 => BorderRadius.circular(30.0);
  static BorderRadius get circleBorder40 => BorderRadius.circular(40.0);

  // Rounded borders
  static BorderRadius get roundedBorder5 => BorderRadius.circular(5.0);
}

double get strokeAlignInside => BorderSide.strokeAlignInside;
double get strokeAlignCenter => BorderSide.strokeAlignCenter;
double get strokeAlignOutside => BorderSide.strokeAlignOutside;
