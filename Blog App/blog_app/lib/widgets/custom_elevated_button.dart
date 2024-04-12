import 'package:flutter/material.dart';
import 'package:blog_app/widgets/base_button.dart';
import 'package:blog_app/core/app_export.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget(),
          )
        : buildElevatedButtonWidget();
  }

  Widget buildElevatedButtonWidget() {
    return Container(
      height: this.height ?? 59.v,
      width: this.width ?? double.maxFinite,
      margin: margin,
      decoration: decoration,
      child: ElevatedButton(
        style: buttonSty1e,
        // onPressed: isDisabled ?? false ? null : onPressed ?? () {},
        onPressed: isDisabled ?? false ? null : onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leftIcon ?? const SizedBox.shrink(),
            Text(text,
                style:
                    buttonTextSty1e ?? CustomTextStyles.titleMediumWhiteA700),
            rightIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
