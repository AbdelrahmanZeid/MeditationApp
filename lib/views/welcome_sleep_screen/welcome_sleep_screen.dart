import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/views/music_screen/music_screen.dart';
import 'package:meditation/widgets/widgets/app_bar/appbar_image.dart';
import 'package:meditation/widgets/widgets/app_bar/appbar_image_1.dart';
import 'package:meditation/widgets/widgets/app_bar/custom_app_bar.dart';
import 'package:meditation/widgets/widgets/custom_elevated_button.dart';

class WelcomeSleepScreen extends StatelessWidget {
  const WelcomeSleepScreen({Key? key})
      : super(
          key: key,
        );
  static const routeName = 'welcomeSleepMusic';

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: CustomAppBar(
          height: 121.v,
          title: Padding(
            padding: EdgeInsets.only(bottom: 50.v),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.v),
                      child: Column(
                        children: [
                          AppbarImage(
                            svgPath: ImageConstant.imgVector,
                            margin: EdgeInsets.only(
                              left: 23.h,
                              right: 8.h,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          AppbarImage(
                            imagePath: ImageConstant.imgVector4Primarycontainer,
                          ),
                        ],
                      ),
                    ),
                    AppbarImage(
                      svgPath: ImageConstant.imgEye,
                      margin: EdgeInsets.only(
                        top: 34.v,
                        bottom: 21.v,
                      ),
                    ),
                    Container(
                      height: 61.17.v,
                      width: 69.95.h,
                      margin: EdgeInsets.only(
                        left: 52.h,
                        bottom: 6.v,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSave,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              top: 11.v,
                              right: 19.h,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgMusic,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.fromLTRB(2.h, 9.v, 17.h, 1.v),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              margin: EdgeInsets.only(
                                left: 19.h,
                                bottom: 11.v,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimary,
                                borderRadius: BorderRadius.circular(
                                  25.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgVector5,
              margin: EdgeInsets.only(top: 52.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 14.v,
                bottom: 4.v,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Row(
                      children: [
                        AppbarImage1(
                          svgPath: ImageConstant.imgCut,
                          margin: EdgeInsets.only(bottom: 21.v),
                        ),
                        AppbarImage1(
                          imagePath: ImageConstant.imgVector4Primarycontainer,
                          margin: EdgeInsets.only(
                            left: 27.h,
                            top: 4.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 6.v,
                    width: 8.h,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      right: 108.h,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgVectorWhiteA70001,
                          height: 6.v,
                          width: 8.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgUserWhiteA70001,
                          height: 6.v,
                          width: 8.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  AppbarImage1(
                    svgPath: ImageConstant.imgVectorIndigo400,
                    margin: EdgeInsets.only(
                      left: 51.h,
                      top: 15.v,
                      right: 57.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgWelcomesleep,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 38.v),
            child: Column(
              children: [
                Text(
                  "Wecome to Sleep",
                  style: CustomTextStyles.headlineLargeIndigo50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 19.v,
                      right: 50.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector4Primarycontainer,
                          height: 21.v,
                          width: 39.h,
                          margin: EdgeInsets.only(
                            top: 47.v,
                            bottom: 7.v,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 311.h,
                            margin: EdgeInsets.only(left: 12.h),
                            child: Text(
                              "Explore the new king of sleep. It uses sound\nand vesualization to create perfect conditions for refreshing sleep.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray200.copyWith(
                                height: 1.69,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 48.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 248.v,
                    width: 369.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector4Primarycontainer,
                          height: 55.v,
                          width: 108.h,
                          alignment: Alignment.topRight,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgFrameIndigo30001,
                          height: 229.v,
                          width: 369.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  onTap: () => Navigator.pushNamed(context, MusicScreen.routeName),
                  text: "GET STARTED",
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 20.h,
                    bottom: 55.v,
                  ),
                  buttonTextStyle: CustomTextStyles.bodyMediumBluegray30003_2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
