import 'package:flutter/material.dart';
import 'package:meditation/views/choose_topic_view.dart';
import 'package:meditation/views/login_view.dart';
import 'package:meditation/views/reminders_screen/reminders_screen.dart';
import 'package:meditation/views/signup_view.dart';

import 'package:meditation/views/home_view.dart';
import 'package:meditation/views/welcome_screen/welcome_screen.dart';

void main() => runApp(
      const MeditationApp(),
    );

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeView(),
        LoginView.routeName: (context) => LoginView(),
        SignupView.routeName: (context) => SignupView(),
        ChooseTopicView.routeName:(context) => ChooseTopicView(),
        WelcomeScreen.routeName:(context) => WelcomeScreen(),


        RemindersScreen.routeName:(context) => RemindersScreen()
      },
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
    );
  }
}
