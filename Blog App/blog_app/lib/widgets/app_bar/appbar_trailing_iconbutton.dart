import 'package:blog_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';

class AppbarTrailingIconbutton extends StatelessWidget {
  final String? imagepath;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  const AppbarTrailingIconbutton({
    Key? key,
    this.imagepath,
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
        child: CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgClose,
          ),
        ),
      ),
    );
  }
}
