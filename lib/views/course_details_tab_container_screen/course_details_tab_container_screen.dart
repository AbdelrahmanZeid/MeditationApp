import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/views/course_details_page/course_details_page.dart';
import 'package:meditation/widgets/widgets/app_bar/appbar_iconbutton.dart';
import 'package:meditation/widgets/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:meditation/widgets/widgets/app_bar/custom_app_bar.dart';

class CourseDetailsTabContainerScreen extends StatefulWidget {
  const CourseDetailsTabContainerScreen({Key? key}) : super(key: key);
  static const routeName = 'courseview';

  @override
  CourseDetailsTabContainerScreenState createState() =>
      CourseDetailsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class CourseDetailsTabContainerScreenState
    extends State<CourseDetailsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.only(right: 1.h),
                      padding: EdgeInsets.symmetric(vertical: 50.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.customBorderBL10,
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup37),
                              fit: BoxFit.cover)),
                      child: CustomAppBar(
                          leadingWidth: 75.h,
                          leading: AppbarIconbutton(
                              svgPath: ImageConstant.imgArrowleft,
                              margin: EdgeInsets.only(left: 20.h),
                              onTap: () {
                                onTapArrowleftone(context);
                              }),
                          actions: [
                            AppbarIconbutton1(
                                svgPath: ImageConstant.imgCheckmarkIndigo50,
                                margin: EdgeInsets.only(left: 20.h)),
                            AppbarIconbutton1(
                                svgPath: ImageConstant.imgDownload,
                                margin:
                                    EdgeInsets.only(left: 15.h, right: 20.h))
                          ])),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 33.v),
                            child: Text("Happy Morning",
                                style: theme.textTheme.displaySmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 10.v),
                            child: Text("COURSE",
                                style: CustomTextStyles
                                    .bodyMediumBluegray30003_1)),
                        Container(
                            width: 315.h,
                            margin: EdgeInsets.only(
                                left: 20.h, top: 19.v, right: 79.h),
                            child: Text(
                                "Ease the mind into a restful night’s sleep  with\nthese deep, amblent tones.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyLargeBluegray30003
                                    .copyWith(height: 1.45))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, top: 28.v, right: 77.h),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: 16.v,
                                  width: 18.h),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("24.234 Favorits",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray30003)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgFrameLightBlue200,
                                  height: 16.v,
                                  width: 20.h,
                                  margin: EdgeInsets.only(left: 49.h)),
                              Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Text("34.234 Lestening",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray30003))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 39.v),
                            child: Text("Pick a Nnrrator",
                                style: CustomTextStyles.titleLargeBluegray800)),
                        SizedBox(height: 20.v),
                        Container(
                            height: 33.v,
                            width: double.maxFinite,
                            child: TabBar(
                                controller: tabviewController,
                                labelPadding: EdgeInsets.zero,
                                labelColor: theme.colorScheme.primary,
                                labelStyle: TextStyle(
                                    fontSize: 16.fSize,
                                    fontFamily: 'HelveticaNeue',
                                    fontWeight: FontWeight.w400),
                                unselectedLabelColor: appTheme.blueGray30003,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 16.fSize,
                                    fontFamily: 'HelveticaNeue',
                                    fontWeight: FontWeight.w400),
                                indicatorColor: theme.colorScheme.primary,
                                tabs: [
                                  Tab(child: Text("MALE VOICE")),
                                  Tab(child: Text("FEMALE VOICE"))
                                ])),
                        SizedBox(
                            height: 278.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  CourseDetailsPage(),
                                  CourseDetailsPage()
                                ]))
                      ])
                ]))));
  }
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
