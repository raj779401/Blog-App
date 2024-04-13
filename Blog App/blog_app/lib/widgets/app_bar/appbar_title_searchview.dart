import 'package:blog_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';

class AppbarTitleSearchview extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? margin;

  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 309.0,
        controller: controller,
        hintText: "Ibl search",
      ),
    );
  }
}
