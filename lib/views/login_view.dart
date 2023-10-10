import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/views/signup_view.dart';
import 'package:meditation/views/welcome_screen/welcome_screen.dart';
import 'package:meditation/widgets/custom_button.dart';
import 'package:meditation/widgets/custom_text_form_field.dart';

import '../routes/app_routes.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static const routeName = 'loginview';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String userEmail = '';
  String userPassword = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/design_image/Vector (1).png',
                      width: 150,
                      height: 120,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/design_image/Vector (2).png',
                      width: 150,
                      height: 120,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/design_image/Vector.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/design_image/Vector (3).png',
                      width: 160,
                      height: 150,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 103,
                    ),
                    Center(
                      child: Text(
                        'Welcome Back!',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      image: 'assets/images/design_image/Facebook.png',
                      btnText: 'Continue with facebook',
                      onPressed: () {},
                      txtColor: Colors.white,
                      backgroundColor: kDefaultIconDarkColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      image: 'assets/images/design_image/iconGoogle.png',
                      btnText: 'Continue with google',
                      onPressed: () {},
                      txtColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Text(
                        'OR LOGIN WITH EMAIL',
                        style: TextStyle(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      textInputType: TextInputType.emailAddress,
                      lable: 'Email address',
                      obscureText: false,
                      onPressed: () {},
                      suffixIcon: Icons.email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field is required';
                        } else if (!value.contains('@')) {
                          return 'Field must contain @';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        if (value!.isNotEmpty) {
                          userEmail = value;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      textInputType: TextInputType.visiblePassword,
                      lable: 'password',
                      suffixIcon: Icons.password,
                      obscureText: true,
                      onPressed: () {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field is required';
                        } else if (value.length < 5) {
                          return 'Field must at least 5 letter';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        if (value!.isNotEmpty) {
                          userPassword = value;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(350, 63),
                        elevation: 15,
                        backgroundColor: kButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.pushNamed(context, WelcomeScreen.routeName);
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Forget password ?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have an account ? ',
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pushNamed(
                              context, SignupView.routeName),
                          child: Text('Sign Up'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
