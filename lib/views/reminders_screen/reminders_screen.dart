

import 'package:meditation/views/home_view.dart';

import '../reminders_screen/widgets/chipviewsu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/widgets/widgets/custom_elevated_button.dart';

class RemindersScreen extends StatelessWidget {
  static const routeName = 'remindersView';
  const RemindersScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 35.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 240.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 25.v,
                ),
                child: Text(
                  "What time would you like to meditate?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineSmallBluegray800Bold.copyWith(
                    height: 1.35,
                  ),
                ),
              ),
              Container(
                width: 317.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 15.v,
                  right: 69.h,
                ),
                child: Text(
                  "Any time you can choose but We recommend first thing in th morning.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray30003.copyWith(
                    height: 1.65,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                color: appTheme.gray10005,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Container(
                  height: 212.v,
                  width: 399.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgUser,
                                  height: 8.v,
                                  width: 10.h,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgShare,
                                  height: 7.v,
                                  width: 20.h,
                                  margin: EdgeInsets.only(left: 54.h),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.v),
                            Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgUserBlueGray30004,
                                  height: 13.v,
                                  width: 11.h,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgSettings,
                                  height: 12.v,
                                  width: 23.h,
                                  margin: EdgeInsets.only(left: 52.h),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 88.h,
                                top: 7.v,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "10",
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 49.h),
                                    child: Text(
                                      "29",
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.v),
                            SizedBox(
                              height: 69.v,
                              width: 350.h,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "11",
                                            style: CustomTextStyles
                                                .headlineSmallBluegray90002,
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 48.h),
                                            child: Text(
                                              "30",
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray90002,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 45.h),
                                            child: Text(
                                              "AM",
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray90002,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 88.h,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        "12",
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 99.h),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "31",
                                            style:
                                            theme.textTheme.headlineSmall,
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsets.only(left: 47.h),
                                            child: Text(
                                              "PM",
                                              style:
                                              theme.textTheme.headlineSmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgVector11,
                                    height: 38.v,
                                    width: 373.h,
                                    alignment: Alignment.topCenter,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.img1,
                                  height: 12.v,
                                  width: 5.h,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgTicket,
                                  height: 13.v,
                                  width: 22.h,
                                  margin: EdgeInsets.only(left: 55.h),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.v),
                            Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgCalculator,
                                  height: 7.v,
                                  width: 8.h,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.img33,
                                  height: 8.v,
                                  width: 25.h,
                                  margin: EdgeInsets.only(left: 51.h),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 48.v,
                                width: 321.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.5, -1.55),
                                    end: Alignment(0.5, 1.25),
                                    colors: [
                                      appTheme.gray10005.withOpacity(0.15),
                                      appTheme.gray10005,
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 47.v,
                                width: 255.h,
                                margin: EdgeInsets.only(
                                  left: 23.h,
                                  top: 97.v,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.5, -1.55),
                                    end: Alignment(0.5, 1.25),
                                    colors: [
                                      appTheme.gray10005.withOpacity(0.15),
                                      appTheme.gray10005,
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
              Container(
                width: 242.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 30.v,
                ),
                child: Text(
                  "Which day would you like to meditate?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineSmallBluegray800Bold.copyWith(
                    height: 1.35,
                  ),
                ),
              ),
              Container(
                width: 309.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 20.v,
                  right: 77.h,
                ),
                child: Text(
                  "Everyday is best, but we recommend picking\nat least five.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray30003.copyWith(
                    height: 1.65,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  runSpacing: 14.75.v,
                  spacing: 10.75.h,
                  children: List<Widget>.generate(7, (index) => ChipviewsuItemWidget()),
                ),
              ),
              CustomElevatedButton(
                text: "SAVE",
                buttonStyle: CustomButtonStyles.fillIndigo,
                margin: EdgeInsets.only( left: 12.h, top: 30.v, right: 12.h,),
                alignment: Alignment.center,
                onTap: () => Navigator.pushNamed(context, HomeView.routeName),
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "NO THANKS",
                  style: CustomTextStyles.bodyMediumBluegray800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
