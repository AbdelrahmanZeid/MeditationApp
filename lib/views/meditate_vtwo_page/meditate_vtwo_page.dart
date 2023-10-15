import '../meditate_vtwo_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:meditation/core/app_export.dart';
import 'package:meditation/widgets/widgets/custom_icon_button.dart';
class MeditateVtwoPage extends StatefulWidget {
  const MeditateVtwoPage({Key? key})
      : super(
          key: key,
        );
  static const routeName = 'Meditateview';

  @override
  MeditateVtwoPageState createState() => MeditateVtwoPageState();
}

class MeditateVtwoPageState extends State<MeditateVtwoPage>
    with AutomaticKeepAliveClientMixin<MeditateVtwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 18.h,
                        top: 27.v,
                        right: 18.h,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2.h),
                            decoration: AppDecoration.fillRed.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              width: 374.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 29.h,
                                vertical: 26.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup121,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daily Calm",
                                        style: CustomTextStyles
                                            .titleMediumBluegray800,
                                      ),
                                      SizedBox(height: 6.v),
                                      Row(
                                        children: [
                                          Text(
                                            "APR 30",
                                            style: CustomTextStyles
                                                .bodySmallBluegray600,
                                          ),
                                          Container(
                                            height: 3.adaptSize,
                                            width: 3.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 5.h,
                                              top: 4.v,
                                              bottom: 5.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.blueGray600,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text(
                                              "PAUSE PRACTICE",
                                              style: CustomTextStyles
                                                  .bodySmallBluegray600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(14.h),
                                    decoration:
                                        IconButtonStyleHelper.fillBlueGray,
                                    child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgVectorBlueGray50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Expanded(
                            child: StaggeredGridView.countBuilder(
                              shrinkWrap: true,
                              primary: false,
                              crossAxisCount: 4,
                              crossAxisSpacing: 24.14.h,
                              mainAxisSpacing: 24.14.h,
                              staggeredTileBuilder: (index) {
                                return StaggeredTile.fit(2);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return UserprofileItemWidget();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
