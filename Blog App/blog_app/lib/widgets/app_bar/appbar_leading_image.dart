import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';

class AppbarLeadingImage extends StatelessWidget {
  final String? imagePath;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  AppbarLeadingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 24.adaptSize,
          width: 24.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
