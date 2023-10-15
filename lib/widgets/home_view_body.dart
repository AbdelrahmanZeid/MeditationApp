
import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';

class HomeViewBody extends StatelessWidget {
 const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(child: Image.asset('assets/images/design_image/Group 17.png')),
          SizedBox(
            height: 30,
          ),
          Text(
            'Good Morning , Asfar',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            'We wish have a Good day',
            style: TextStyle(
              fontSize: 18,
              color: kTextColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/design_image/Group 7.png'),
              Image.asset('assets/images/design_image/Group 8.png'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Image.asset(
              'assets/images/design_image/Groupjj.png',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Recommender for you',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/design_image/Group 23.png'),
              Image.asset('assets/images/design_image/Group 25.png'),
            ],
          ),
        ],
      ),
    );
  }
}
