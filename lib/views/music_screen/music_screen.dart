import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/widgets/widgets/custom_icon_button.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);
  static const routeName = 'SleepMusic1';

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                  height: 310.v,
                                  width: 220.h,
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 310.v,
                                                width: 220.h,
                                                padding: EdgeInsets.only(
                                                    left: 75.h,
                                                    top: 50.v,
                                                    bottom: 50.v),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup45),
                                                        fit: BoxFit.cover)),
                                                child: CustomIconButton(
                                                    height: 55.adaptSize,
                                                    width: 55.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(18.h),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmarkIndigo50)))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: 185.v,
                                                width: 86.h,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 11.h,
                                                    vertical: 50.v),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup46),
                                                        fit: BoxFit.cover)),
                                                child: CustomIconButton(
                                                    height: 55.adaptSize,
                                                    width: 55.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(18.h),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgDownload))))
                                      ]))),
                          CustomIconButton(
                              height: 55.adaptSize,
                              width: 55.adaptSize,
                              margin: EdgeInsets.only(left: 20.h, top: 50.v),
                              padding: EdgeInsets.all(20.h),
                              decoration: IconButtonStyleHelper.fillIndigo,
                              alignment: Alignment.topLeft,
                              onTap: () {
                                onTapBtnCloseone(context);
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  height: 755.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorIndigo900,
                                            height: 244.v,
                                            width: 168.h,
                                            alignment: Alignment.topLeft),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorIndigo900238x160,
                                            height: 238.v,
                                            width: 160.h,
                                            alignment: Alignment.topRight,
                                            margin:
                                                EdgeInsets.only(top: 187.v)),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20.h,
                                                    right: 20.h,
                                                    bottom: 222.v),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      43.h),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        39.v,
                                                                    width: 38.h,
                                                                    margin: EdgeInsets.symmetric(
                                                                        vertical: 35
                                                                            .v),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgRefreshIndigo50,
                                                                              height: 39.v,
                                                                              width: 38.h,
                                                                              alignment: Alignment.center),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: EdgeInsets.only(left: 11.h), child: Text("15", style: CustomTextStyles.bodySmallIndigo50)))
                                                                        ])),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgGroup6834Indigo50,
                                                                    height: 109
                                                                        .adaptSize,
                                                                    width: 109
                                                                        .adaptSize),
                                                                Container(
                                                                    height:
                                                                        39.v,
                                                                    width: 38.h,
                                                                    margin: EdgeInsets.symmetric(
                                                                        vertical: 35
                                                                            .v),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgRefreshIndigo5039x38,
                                                                              height: 39.v,
                                                                              width: 38.h,
                                                                              alignment: Alignment.center),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: EdgeInsets.only(left: 11.h), child: Text("15", style: CustomTextStyles.bodySmallIndigo50)))
                                                                        ]))
                                                              ])),
                                                      SizedBox(height: 49.v),
                                                      SizedBox(
                                                          height: 17.v,
                                                          width: 333.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        height:
                                                                            3.v,
                                                                        width: 333
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            bottom:
                                                                                5.v))),
                                                                SliderTheme(
                                                                    data: SliderThemeData(
                                                                        trackShape:
                                                                            RoundedRectSliderTrackShape(),
                                                                        activeTrackColor:
                                                                            appTheme
                                                                                .indigo50,
                                                                        inactiveTrackColor:
                                                                            appTheme
                                                                                .blueGray70087,
                                                                        thumbColor: theme
                                                                            .colorScheme
                                                                            .primary,
                                                                        thumbShape:
                                                                            RoundSliderThumbShape()),
                                                                    child: Slider(
                                                                        value:
                                                                            8.62,
                                                                        min:
                                                                            0.0,
                                                                        max:
                                                                            100.0,
                                                                        onChanged:
                                                                            (value) {}))
                                                              ])),
                                                      SizedBox(height: 11.v),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text("01:30",
                                                                style: CustomTextStyles
                                                                    .bodyLargeIndigo50),
                                                            Text("45:00",
                                                                style: CustomTextStyles
                                                                    .bodyLargeIndigo50)
                                                          ])
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 109.h,
                                                    top: 192.v,
                                                    right: 109.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("Night Island",
                                                          style: CustomTextStyles
                                                              .displaySmallIndigo50),
                                                      SizedBox(height: 10.v),
                                                      Text("SLEEP MUSIC",
                                                          style: CustomTextStyles
                                                              .bodyMediumBluegray30005)
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorPrimarycontainer,
                                            height: 177.v,
                                            width: 152.h,
                                            alignment: Alignment.bottomLeft,
                                            margin:
                                                EdgeInsets.only(bottom: 27.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorPrimarycontainer232x143,
                                            height: 232.v,
                                            width: 143.h,
                                            alignment: Alignment.bottomRight)
                                      ])))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
