import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';
import 'package:meditation/views/home_view.dart';
import 'package:meditation/widgets/widgets/custom_icon_button.dart';

class FocusattentionItemWidget extends StatelessWidget {
  const FocusattentionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          onTap: () => Navigator.pushNamed(context, HomeView.routeName),
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(14.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(
            svgPath: ImageConstant.imgVectorGray10003,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Focus Attention",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 4.v),
              Text(
                "10 MIN",
                style: CustomTextStyles.bodySmallBluegray30003,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
