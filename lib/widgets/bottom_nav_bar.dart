import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/cubits/bottom_nav_bar_cubit.dart';
import 'package:meditation/cubits/bottom_nav_bar_states.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({super.key});

  @override
 
  

  @override
  Widget build(BuildContext context) {
    BottomNavBarCubit barCubit = BottomNavBarCubit.get(context);
    return BlocListener<BottomNavBarCubit,BottomNavBarStates>(
      listener: (BuildContext context, state) {},
      child: BottomNavigationBar(
        selectedItemColor: kButtonColor,
        elevation: 15,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          barCubit.onTap(index);
          print(index);
        },
        currentIndex: barCubit.currentIndex,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(color: kButtonColor),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Sleep',
            icon: Icon(
              Icons.bed_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Mediatate',
            icon: Icon(
              Icons.mediation_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(
              Icons.music_note,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Asfar',
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
