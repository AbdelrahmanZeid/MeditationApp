import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/views/login_view.dart';
import 'package:meditation/views/signup_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBGColor,
      body: Stack(
        children: [
          Image.asset('assets/images/design_image/Frame.png'),
          WelcomeBody(),
        ],
      ),
    );
  }
}

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Center(child: Image.asset('assets/images/design_image/Group 17.png')),
        Spacer(
          flex: 1,
        ),
        Image.asset('assets/images/design_image/Group.png'),
        Spacer(),
        Image.asset('assets/images/design_image/Group 6791.png'),
        Spacer(
          flex: 2,
        ),
        CustomButton(
          btnText: 'LOG IN',
          onPressed: () => Navigator.pushNamed(context, LoginView.routeName),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DONT HAVE AN ACCOUNT ? ',
              style: TextStyle(color: kTextColor),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, SignupView.routeName),
              child: Text('SIGN UP'),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
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
