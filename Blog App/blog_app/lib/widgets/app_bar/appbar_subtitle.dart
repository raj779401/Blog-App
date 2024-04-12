import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';

class AppbarSubtitle extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  const AppbarSubtitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleMediumBlack900.copyWith(
            color: appTheme.black900,
          ),
        ),
      ),
    );
  }
}
