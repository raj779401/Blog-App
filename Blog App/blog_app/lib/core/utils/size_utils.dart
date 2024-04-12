import 'dart:ui' as ui;
import 'package:device_type/device_type.dart';
import 'package:flutter/material.dart';

const num FIGMA_DESIGN_WIDTH = 375;
const num FIGMA_DESIGN_HEIGHT = 812;
const num FIGMA_DESIGN_STATUS_BAR = 0;
typedef ResponsiveBui1d = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

class Sizer extends StatelessWidget {
  const Sizer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final ResponsiveBui1d builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeUtils.setScreenSize(constraints, orientation);
            return builder(context, orientation, SizeUtils.deviceType);
          },
        );
      },
    );
  }
}

class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late num height;
  static late num width;

  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isFinite
          ? boxConstraints.maxWidth
          : FIGMA_DESIGN_WIDTH;
      height = boxConstraints.maxHeight.isFinite
          ? boxConstraints.maxHeight
          : FIGMA_DESIGN_HEIGHT;
    } else {
      width = boxConstraints.maxHeight.isFinite
          ? boxConstraints.maxHeight
          : FIGMA_DESIGN_WIDTH;
      height = boxConstraints.maxWidth.isFinite
          ? boxConstraints.maxWidth
          : FIGMA_DESIGN_HEIGHT;
    }

    deviceType = DeviceType.mobile;
  }
}

extension ResponsiveExtension on num {
  /// This method is used to get the width of the screen or widget according to the Viewport width.
  num get width => SizeUtils.width;

  /// This method is used to get the height of the screen or widget according to the Viewport height.
  num get height => SizeUtils.height;

  /// This method is used to set padding/margin (for the left and right side) & device viewport width.
  double get h => (this * width) / FIGMA_DESIGN_WIDTH;

  /// This method is used to set padding/margin (for the top and bottom side) & device viewport height.
  double get v =>
      (this * SizeUtils.height) /
      (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR);

  /// This method is used to set the smallest px in image height and width.
  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDouble() : width.toDouble();
  }

  /// This method is used to set text font size according to Viewport.
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  /// Return a [double] value formatted according to the provided fractionDigits.
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  /// Check if the double value is non-zero.
  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, Desktop }
