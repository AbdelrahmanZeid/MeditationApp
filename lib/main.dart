import 'package:flutter/material.dart';
import 'package:meditation/views/login_view.dart';
import 'package:meditation/views/signup_view.dart';

import 'package:meditation/views/welcome_view.dart';

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
        '/': (context) => const WelcomeView(),
        LoginView.routeName:(context) => LoginView(),
        SignupView.routeName:(context) => SignupView(),
      },
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
    );
  }
}
