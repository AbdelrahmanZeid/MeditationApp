import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:meditation/cubits/bottom_nav_bar_cubit.dart';
import 'package:meditation/views/choose_topic_view.dart';
import 'package:meditation/views/course_details_tab_container_screen/course_details_tab_container_screen.dart';
import 'package:meditation/views/home_view.dart';
import 'package:meditation/views/login_view.dart';
import 'package:meditation/views/meditate_vtwo_page/meditate_vtwo_page.dart';
import 'package:meditation/views/meditate_vtwo_tab_container_page/meditate_vtwo_tab_container_page.dart';
import 'package:meditation/views/music_screen/music_screen.dart';
import 'package:meditation/views/music_vtwo_screen/music_vtwo_screen.dart';
import 'package:meditation/views/play_option_screen/play_option_screen.dart';
import 'package:meditation/views/reminders_screen/reminders_screen.dart';
import 'package:meditation/views/signup_view.dart';
import 'package:meditation/views/meditation_view.dart';
import 'package:meditation/views/welcome_screen/welcome_screen.dart';
import 'package:meditation/views/welcome_sleep_screen/welcome_sleep_screen.dart';

void main() => runApp(
      const MeditationApp(),
    );

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return BottomNavBarCubit();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const MeditationView(),
          LoginView.routeName: (context) => LoginView(),
          SignupView.routeName: (context) => SignupView(),
          ChooseTopicView.routeName: (context) => ChooseTopicView(),
          WelcomeScreen.routeName: (context) => WelcomeScreen(),
          RemindersScreen.routeName: (context) => RemindersScreen(),
          HomeView.routeName: (context) => HomeView(),
          MusicScreen2.routeName: (context) => MusicScreen2(),
          MusicScreen.routeName: (context) => MusicScreen(),
          MeditateVtwoTabContainerPage.routeName: (context) => MeditateVtwoTabContainerPage(),
          MeditateVtwoPage.routeName: (context) => MeditateVtwoPage(),
          CourseDetailsTabContainerScreen.routeName: (context) => CourseDetailsTabContainerScreen(),
          PlayOptionScreen.routeName: (context) => PlayOptionScreen(),
          WelcomeSleepScreen.routeName: (context) => WelcomeSleepScreen()
        },
        theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      ),
    );
  }
}
