import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/views/meditate_vtwo_page/meditate_vtwo_page.dart';
import 'package:meditation/views/music_vtwo_screen/music_vtwo_screen.dart';
import 'package:meditation/widgets/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MeditateVtwoTabContainerPage extends StatefulWidget {
  const MeditateVtwoTabContainerPage({Key? key})
      : super(
          key: key,
        );
  static const routeName = 'MeditateVtwoTabContainerPage';

  @override
  MeditateVtwoTabContainerPageState createState() =>
      MeditateVtwoTabContainerPageState();
}

class MeditateVtwoTabContainerPageState
    extends State<MeditateVtwoTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 65.v),
              Text(
                "Meditate",
                style: theme.textTheme.headlineMedium,
              ),
              Container(
                width: 326.h,
                margin: EdgeInsets.only(
                  left: 43.h,
                  top: 13.v,
                  right: 44.h,
                ),
                child: Text(
                  "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBluegray300.copyWith(
                    height: 1.35,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Container(
                height: 94.v,
                width: 404.h,
                child: TabBar(
                  controller: tabviewController,
                  isScrollable: true,
                  indicatorPadding: EdgeInsets.all(
                    14.5.h,
                  ),
                  indicator: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      25.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: CustomIconButton(
                        height: 65.adaptSize,
                        width: 65.adaptSize,
                        padding: EdgeInsets.all(20.h),
                        decoration: IconButtonStyleHelper.fillPrimaryTL25,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgFrameWhiteA70001,
                        ),
                      ),
                    ),
                    Tab(
                      child: CustomIconButton(
                        height: 65.adaptSize,
                        width: 65.adaptSize,
                        padding: EdgeInsets.all(18.h),
                        decoration: IconButtonStyleHelper.fillBlueGrayTL25,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgCheckmarkWhiteA70001,
                        ),
                      ),
                    ),
                    Tab(
                      child: CustomIconButton(
                        height: 65.adaptSize,
                        width: 65.adaptSize,
                        padding: EdgeInsets.all(20.h),
                        decoration: IconButtonStyleHelper.fillBlueGrayTL25,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgFrameWhiteA7000165x65,
                        ),
                      ),
                    ),
                    Tab(
                      child: CustomIconButton(
                        height: 65.adaptSize,
                        width: 65.adaptSize,
                        padding: EdgeInsets.all(19.h),
                        decoration: IconButtonStyleHelper.fillBlueGrayTL25,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgFrame65x65,
                        ),
                      ),
                    ),
                    Tab(
                      child: CustomIconButton(
                        height: 65.adaptSize,
                        width: 65.adaptSize,
                        padding: EdgeInsets.all(18.h),
                        decoration: IconButtonStyleHelper.fillBlueGrayTL25,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgQuestion,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 550.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    MeditateVtwoPage(),
                    MeditateVtwoPage(),
                    MeditateVtwoPage(),
                    MeditateVtwoPage(),
                    MeditateVtwoPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
