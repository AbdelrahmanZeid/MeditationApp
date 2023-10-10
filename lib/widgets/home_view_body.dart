import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/views/login_view.dart';
import 'package:meditation/views/signup_view.dart';
 
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2,),
        Center(child: Image.asset('assets/images/design_image/Group 17.png')),
        Spacer(
          flex: 1,
        ),
        Image.asset('assets/images/design_image/Group.png'),
        Spacer(
          flex: 2,
        ),
        Image.asset('assets/images/design_image/Group 6791.png'),
        Spacer(
          flex: 2,
        ),
       ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(350, 63),
        elevation: 15,
        backgroundColor:kButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      onPressed:  () => Navigator.pushNamed(context, SignupView.routeName),
      child:
          
          Text(
            'Sign up',
            style: TextStyle(color: Colors.black),
          ),
       
    ),
        const SizedBox(
          height: 10,
        ),
        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account ? ',
                  style: TextStyle(color: kTextColor,fontWeight: FontWeight.bold),
                  
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, LoginView.routeName),
                  child: Text('Sign In'),
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
