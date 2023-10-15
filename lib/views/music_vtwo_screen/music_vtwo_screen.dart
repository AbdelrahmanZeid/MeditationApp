import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/widgets/widgets/custom_icon_button.dart';

class MusicScreen2 extends StatelessWidget {
  const MusicScreen2({Key? key}) : super(key: key);
  static const routeName = 'musicview';

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgVectorGray50,
                              height: 244.v,
                              width: 168.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 201.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgVectorGray50238x161,
                              height: 238.v,
                              width: 161.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 267.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgVector372x237,
                              height: 372.v,
                              width: 237.h,
                              alignment: Alignment.bottomLeft),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  width: 259.h,
                                  margin: EdgeInsets.only(
                                      left: 154.h, bottom: 444.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 50.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup166),
                                          fit: BoxFit.cover)),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 55.adaptSize,
                                            width: 55.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 296.v),
                                            padding: EdgeInsets.all(18.h),
                                            decoration: IconButtonStyleHelper
                                                .fillGrayTL27,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgGroup6846)),
                                        CustomIconButton(
                                            height: 55.adaptSize,
                                            width: 55.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 15.h, bottom: 296.v),
                                            padding: EdgeInsets.all(18.h),
                                            decoration: IconButtonStyleHelper
                                                .fillGrayTL271,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgAirplaneWhiteA70001))
                                      ]))),
                          CustomIconButton(
                              height: 55.adaptSize,
                              width: 55.adaptSize,
                              margin: EdgeInsets.only(left: 20.h, top: 50.v),
                              padding: EdgeInsets.all(20.h),
                              decoration: IconButtonStyleHelper.outlineGrayTL27,
                              alignment: Alignment.topLeft,
                              onTap: () {
                                onTapBtnCloseone(context);
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.h, right: 20.h, bottom: 161.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 43.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      height: 39.v,
                                                      width: 38.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 35.v),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgRefresh,
                                                                height: 39.v,
                                                                width: 38.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 11
                                                                            .h),
                                                                    child: Text(
                                                                        "15",
                                                                        style: CustomTextStyles
                                                                            .bodySmallBluegray300)))
                                                          ])),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup6834,
                                                      height: 109.adaptSize,
                                                      width: 109.adaptSize),
                                                  Container(
                                                      height: 39.v,
                                                      width: 38.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 35.v),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgRefreshBlueGray300,
                                                                height: 39.v,
                                                                width: 38.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 11
                                                                            .h),
                                                                    child: Text(
                                                                        "15",
                                                                        style: CustomTextStyles
                                                                            .bodySmallBluegray300)))
                                                          ]))
                                                ])),
                                        SizedBox(height: 49.v),
                                        SizedBox(
                                            height: 17.v,
                                            width: 333.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height: 3.v,
                                                          width: 333.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom:
                                                                      5.v))),
                                                  SliderTheme(
                                                      data: SliderThemeData(
                                                          trackShape:
                                                              RoundedRectSliderTrackShape(),
                                                          activeTrackColor:
                                                              appTheme
                                                                  .blueGray800,
                                                          inactiveTrackColor:
                                                              appTheme
                                                                  .blueGray300
                                                                  .withOpacity(
                                                                      0.53),
                                                          thumbColor: appTheme
                                                              .blueGray800,
                                                          thumbShape:
                                                              RoundSliderThumbShape()),
                                                      child: Slider(
                                                          value: 8.62,
                                                          min: 0.0,
                                                          max: 100.0,
                                                          onChanged:
                                                              (value) {}))
                                                ])),
                                        SizedBox(height: 11.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("01:30",
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              Text("45:00",
                                                  style:
                                                      theme.textTheme.bodyLarge)
                                            ])
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 78.h, top: 390.v, right: 78.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Focus Attention",
                                            style:
                                                theme.textTheme.displaySmall),
                                        SizedBox(height: 13.v),
                                        Text("7 DAYS OF CALM",
                                            style: CustomTextStyles
                                                .bodyMediumBluegray300)
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse46,
                              height: 180.v,
                              width: 185.h,
                              alignment: Alignment.topLeft),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse47,
                              height: 266.v,
                              width: 179.h,
                              alignment: Alignment.bottomRight)
                        ]))))));
  }

  onTapBtnCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
