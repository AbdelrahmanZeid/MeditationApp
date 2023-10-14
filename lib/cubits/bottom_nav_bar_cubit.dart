import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditation/cubits/bottom_nav_bar_states.dart';
import 'package:meditation/views/maditate_view.dart';
import 'package:meditation/views/meditation_view.dart';
import 'package:meditation/views/music_view.dart';
import 'package:meditation/views/profile_view.dart';
import 'package:meditation/views/sleep_view.dart';
import 'package:meditation/widgets/home_view_body.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarStates> {
  BottomNavBarCubit()
      : super(
          BottomNavBarInitState(),
        );
  static BottomNavBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> views = [
    HomeViewBody(),
    ProfileView(),
    MusicView(),
    MaditateView(),
    SleepView(),
  ];

  void onTap(index) {
    currentIndex = index;

    emit(
      BottomNavBarSuccessState(),
    );
  }
}
