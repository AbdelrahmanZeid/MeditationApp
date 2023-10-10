import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';

import 'package:meditation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBGColor,
      body: SafeArea(
        child: Stack(
          children: [
            
            Image.asset('assets/images/design_image/Frame.png'),
            HomeViewBody(),
            
          ],
        ),
        
      ),
    );
  }
}
