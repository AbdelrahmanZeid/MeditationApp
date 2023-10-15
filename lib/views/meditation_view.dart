import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/widgets/meditation_view_body.dart';

class MeditationView extends StatelessWidget {
  const MeditationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBGColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/design_image/Frame.png'),
            MeditationViewBody(),
          ],
        ),
        
      ),
    );
  }
}
