import '../course_details_page/widgets/focusattention_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';

class CourseDetailsPage extends StatefulWidget {
  const CourseDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  CourseDetailsPageState createState() => CourseDetailsPageState();
}

class CourseDetailsPageState extends State<CourseDetailsPage>
    with AutomaticKeepAliveClientMixin<CourseDetailsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 38.v,
              right: 20.h,
            ),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Opacity(
                  opacity: 0.15,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0.v),
                    child: SizedBox(
                      width: 374.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.blueGray20067,
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return FocusattentionItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
