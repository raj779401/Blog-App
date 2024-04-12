import 'package:flutter/material.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/core/utils/size_utils.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(key: key);

  final Alignment? alignment;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;
  final Widget? child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget {
    return SizedBox(
      height: height ?? 0,
      width: width ?? 0,
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Container(
          height: height ?? 0,
          width: width ?? 0,
          padding: padding ?? EdgeInsets.zero,
          decoration: decoration ??
              BoxDecoration(
                color: appTheme.gray300,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.04),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }
}
