import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/views/choose_topic_view.dart';
import 'package:meditation/widgets/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = 'WelcomeView';
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 50.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.v),
                              child: Text(
                                "Silent",
                                style: CustomTextStyles
                                    .titleMediumAirbnbCerealAppWhiteA70001,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgLogoWhiteA70001,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              margin: EdgeInsets.only(left: 10.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                top: 4.v,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "Moon",
                                style: CustomTextStyles
                                    .titleMediumAirbnbCerealAppWhiteA70001,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 77.v),
                      SizedBox(
                        width: 262.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Hi Afsar, Welcome \n",
                                style: CustomTextStyles.headlineLargeRegular,
                              ),
                              TextSpan(
                                text: "to Silent Moon",
                                style: theme.textTheme.headlineLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 310.h,
                        margin: EdgeInsets.only(
                          left: 52.h,
                          top: 23.v,
                          right: 50.h,
                        ),
                        child: Text(
                          "Explore the app, Find some peace of mind to prepare for meditation.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeGray200.copyWith(
                            height: 1.69,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          margin: EdgeInsets.only(
                            left: 27.h,
                            top: 39.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.indigoA100,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 33.h,
                            top: 5.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.indigoA100,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 551.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                height: 492.v,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse13,
                                      height: 492.v,
                                      width: 414.h,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 422.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse12,
                                              height: 422.v,
                                              width: 414.h,
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 30.h,
                                                  top: 6.v,
                                                  right: 30.h,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgReply,
                                                      height: 14.v,
                                                      width: 36.h,
                                                      margin: EdgeInsets.only(
                                                          right: 66.h),
                                                    ),
                                                    SizedBox(height: 8.v),
                                                    SizedBox(
                                                      height: 360.v,
                                                      width: 354.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          35.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillIndigoA
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder177,
                                                              ),
                                                              child: Container(
                                                                height: 284
                                                                    .adaptSize,
                                                                width: 284
                                                                    .adaptSize,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: appTheme
                                                                      .indigoA10003,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    142.h,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgReply,
                                                            height: 8.v,
                                                            width: 22.h,
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 23.h),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.h,
                                  vertical: 85.v,
                                ),
                                decoration: AppDecoration.fillIndigoA10004,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 33.v),
                                    CustomElevatedButton(
                                      text: "GET STARTED",
                                      buttonStyle: CustomButtonStyles.fillGray,
                                      buttonTextStyle: CustomTextStyles
                                          .bodyMediumBluegray800,
                                      onTap: () => Navigator.pushNamed(context, ChooseTopicView.routeName),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroupIndigoA10004,
                              height: 258.v,
                              width: 414.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 28.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVector3,
                              height: 55.v,
                              width: 107.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 65.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVector4,
                              height: 24.v,
                              width: 41.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 5.v),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
