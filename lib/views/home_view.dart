import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  static const routeName = 'homeview';

  @override
 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      bottomNavigationBar:  bottomNavigationBar(),
    );
  }
}


class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int currentIndex = 0;

  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: kButtonColor,
        elevation: 15,
        unselectedItemColor: Colors.grey,
        onTap: onTap,
        currentIndex: currentIndex,
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
            label: 'Mediation',
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
      );
  }
}
