import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/views/music_screen/music_screen.dart';
import 'package:meditation/widgets/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:meditation/widgets/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:meditation/widgets/widgets/app_bar/custom_app_bar.dart';
import 'package:meditation/widgets/widgets/custom_elevated_button.dart';

class PlayOptionScreen extends StatelessWidget {
  const PlayOptionScreen({Key? key}) : super(key: key);
  static const routeName = 'PlayOption';

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 290.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 54.v,
                                width: double.maxFinite,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo500))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 50.v),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                    image: DecorationImage(
                                        image:
                                            AssetImage(ImageConstant.imgGroup4),
                                        fit: BoxFit.cover)),
                                child: CustomAppBar(
                                    leadingWidth: 75.h,
                                    leading: AppbarIconbutton2(
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: EdgeInsets.only(left: 20.h),
                                        onTap: () {
                                          onTapArrowleftone(context);
                                        }),
                                    actions: [
                                      AppbarIconbutton1(
                                          svgPath: ImageConstant
                                              .imgCheckmarkIndigo50,
                                          margin: EdgeInsets.only(left: 20.h)),
                                      AppbarIconbutton1(
                                          svgPath: ImageConstant.imgDownload,
                                          margin: EdgeInsets.only(
                                              left: 15.h, right: 20.h))
                                    ])))
                      ])),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 20.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 11.v),
                            Text("Night Island",
                                style: CustomTextStyles.displaySmallIndigo50),
                            SizedBox(height: 10.v),
                            Row(children: [
                              Text("45 MIN",
                                  style:
                                      CustomTextStyles.bodyMediumBluegray30005),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 7.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray30005,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("SLEEP MUSIC",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray30005))
                            ]),
                            Container(
                                width: 315.h,
                                margin: EdgeInsets.only(top: 19.v, right: 59.h),
                                child: Text(
                                    "Ease the mind into a restful night’s sleep  with\nthese deep, amblent tones.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyLargeBluegray30002
                                        .copyWith(height: 1.45))),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 28.v, right: 57.h),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgFavoriteIndigo50,
                                      height: 16.v,
                                      width: 18.h,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h, bottom: 1.v),
                                      child: Text("24.234 Favorits",
                                          style: CustomTextStyles
                                              .bodyMediumIndigo50)),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgFrameIndigo5016x20,
                                      height: 16.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(
                                          left: 49.h, bottom: 1.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("34.234 Lestening",
                                          style: CustomTextStyles
                                              .bodyMediumIndigo50))
                                ])),
                            SizedBox(height: 28.v),
                            Opacity(
                                opacity: 0.15,
                                child: Divider(
                                    color: appTheme.blueGray30002
                                        .withOpacity(0.4))),
                            SizedBox(height: 5.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Related",
                                            style: CustomTextStyles
                                                .headlineSmallIndigo50),
                                        SizedBox(height: 17.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMaskgroup122x177,
                                            height: 122.v,
                                            width: 177.h),
                                        SizedBox(height: 9.v),
                                        Text("Moon Clouds",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 6.v),
                                        Row(children: [
                                          Text("45 MIN",
                                              style: theme.textTheme.bodySmall),
                                          Container(
                                              height: 3.adaptSize,
                                              width: 3.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 5.h,
                                                  top: 5.v,
                                                  bottom: 3.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray30005,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("SLEEP MUSIC",
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ])
                                      ]),
                                  Padding(
                                      padding: EdgeInsets.only(top: 46.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgXmlid134,
                                                height: 122.v,
                                                width: 176.h,
                                                radius: BorderRadius.circular(
                                                    10.h)),
                                            SizedBox(height: 11.v),
                                            Text("Sweet Sleep",
                                                style: theme
                                                    .textTheme.titleMedium),
                                            SizedBox(height: 4.v),
                                            Row(children: [
                                              Text("45 MIN",
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              Container(
                                                  height: 3.adaptSize,
                                                  width: 3.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h,
                                                      top: 5.v,
                                                      bottom: 3.v),
                                                  decoration: BoxDecoration(
                                                      color: appTheme
                                                          .blueGray30005,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("SLEEP MUSIC",
                                                      style: theme
                                                          .textTheme.bodySmall))
                                            ])
                                          ]))
                                ])
                          ]))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                onTap: () => Navigator.pushNamed(context, MusicScreen.routeName),
                text: "PLAY",
                margin: EdgeInsets.only(left: 20.h, right: 19.h, bottom: 15.v),
                buttonTextStyle: CustomTextStyles.bodyLargeBluegray30002_1)));
  }

  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
