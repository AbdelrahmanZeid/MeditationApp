import 'package:flutter/material.dart';
import 'package:meditation/views/home_view.dart';

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
      },
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark
      ),
     
    );
  }
}
