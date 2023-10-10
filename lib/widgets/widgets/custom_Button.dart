import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/core/app_export.dart';

class CustomButton extends StatelessWidget {

  Color kPrimaryColor =Color(0xff03174C);
  Color kButtonColor =Color(0xff8E97FD);
  Color kHeaderColor =Color(0xff3F414E);
  Color kTextColor =Color(0xffA1A4B2);
  Color kMainBGColor =Color(0xffE5E5E5);
  CustomButton({
    required this.btnText,
    required this.onPressed,
  });
  final String btnText;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(335, 63),
        elevation: 15,
        backgroundColor: kButtonColor,
        padding: EdgeInsets.only(left: 20.h, top: 40.v, right: 20.h,bottom: 40.v
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(color: kMainBGColor),
      ),
    );
  }
}
