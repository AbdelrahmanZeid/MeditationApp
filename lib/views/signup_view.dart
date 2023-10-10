import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/views/login_view.dart';
import 'package:meditation/views/welcome_screen/welcome_screen.dart';
import 'package:meditation/widgets/custom_button.dart';
import 'package:meditation/widgets/custom_text_form_field.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});
  static const routeName = 'signupview';

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  String userEmail = '';
  String userPassword = '';
  String userName = '';
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
            // GestureDetector(
            //   onTap: () => Navigator.pop(context),
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(vertical: 35, horizontal: 12),
            //     child: Image.asset(
            //       'assets/images/design_image/Group 6802.png',
            //     ),
            //   ),
            // ),
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
                        'Create your account',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      image: 'assets/images/design_image/Facebook.png',
                      backgroundColor: kDefaultIconDarkColor,
                      btnText: 'Continue with facebook',
                      onPressed: () {},
                      txtColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      image: 'assets/images/design_image/iconGoogle.png',
                      backgroundColor: Colors.white,
                      btnText: 'Continue with google',
                      txtColor: Colors.black,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Text(
                        'OR LOGIN WITH EMAIL',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      textInputType: TextInputType.name,
                      lable: 'Username',
                      obscureText: false,
                      onPressed: () {},
                      suffixIcon: Icons.check,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username is required';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        if (value!.isNotEmpty) {
                          userName = value;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      textInputType: TextInputType.emailAddress,
                      lable: 'Email address',
                      obscureText: false,
                      onPressed: () {},
                      suffixIcon: Icons.check,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
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
                          return 'Password is required';
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
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'i have read the ',
                          style: TextStyle(
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          'Privace Policy ',
                          style: TextStyle(
                            color: kButtonColor,
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
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

                          Navigator.pushNamed(context, LoginView.routeName);
                        }
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.black),
                      ),
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
