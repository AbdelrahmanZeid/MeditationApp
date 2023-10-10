import 'package:flutter/material.dart';

import 'package:meditation/views/welcome_screen/welcome_screen.dart';

class AppRoutes {

  static const String welcomeScreen = '/welcome_screen';

  static Map<String, WidgetBuilder> routes = {

    welcomeScreen: (context) => WelcomeScreen(),
  };
}
