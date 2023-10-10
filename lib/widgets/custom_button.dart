import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.image,
    required this.btnText,
    required this.onPressed,
    required this.txtColor,
    required this.backgroundColor,
  });
  final String btnText;

  final VoidCallback onPressed;
  final Color txtColor;
  final Color backgroundColor;
   String? image;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(350, 63),
        elevation: 15,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image!),
          const SizedBox(width: 15,),
          Text(
            btnText,
            style: TextStyle(color: txtColor,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
