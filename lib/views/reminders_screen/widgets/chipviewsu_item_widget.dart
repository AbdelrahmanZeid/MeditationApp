import 'package:flutter/material.dart';
import 'package:meditationapp/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewsuItemWidget extends StatelessWidget {
  const ChipviewsuItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "SU",
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'HelveticaNeue',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.blueGray800,
      selectedColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
