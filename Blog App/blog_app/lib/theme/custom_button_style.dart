import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/core/utils/size_utils.dart';
import 'package:blog_app/theme/theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle fillPrimary = ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );

  // Outline button style
  static ButtonStyle outlineSecondaryContainer = OutlinedButton.styleFrom(
    backgroundColor: appTheme.whiteA700,
    side: BorderSide(
      color: theme.colorScheme.secondaryContainer,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17.0),
    ),
  );

  // Text button style
  static ButtonStyle none = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
  );
}
