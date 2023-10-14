import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditation/cubits/bottom_nav_bar_cubit.dart';
import 'package:meditation/cubits/bottom_nav_bar_states.dart';

import 'package:meditation/widgets/bottom_nav_bar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  static const routeName = 'homeview';

  @override
  @override
  Widget build(BuildContext context) {
    BottomNavBarCubit bottomNavBarCubit = BottomNavBarCubit.get(context);
    return BlocBuilder<BottomNavBarCubit, BottomNavBarStates>(
      builder: (BuildContext context, BottomNavBarStates state) {
        return Scaffold(
          body: bottomNavBarCubit.views[bottomNavBarCubit.currentIndex],
          bottomNavigationBar: bottomNavigationBar(),
        );
      },
    );
  }
}
