import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

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

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(27.h),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(27.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: appTheme.blueGray30003,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10006,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray800,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPrimaryTL25 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillBlueGrayTL25 => BoxDecoration(
        color: appTheme.blueGray300,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGrayTL27 => BoxDecoration(
        color: appTheme.gray40001,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillGrayTL271 => BoxDecoration(
        color: appTheme.gray40002,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get outlineGrayTL27 => BoxDecoration(
        color: appTheme.whiteA70001,
        borderRadius: BorderRadius.circular(27.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillBlueGrayTL251 => BoxDecoration(
        color: appTheme.blueGray500,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillBlueGrayTL252 => BoxDecoration(
        color: appTheme.blueGray50001,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
        borderRadius: BorderRadius.circular(27.h),
      );
}
