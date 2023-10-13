import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/models/topic_model.dart';
import 'package:meditation/views/reminders_screen/reminders_screen.dart';

class ChooseTopicView extends StatelessWidget {
  ChooseTopicView({super.key});
  static const routeName = 'choosetopicview';

  final List<String> imagesList = const [
    'assets/images/design_image/Group (2).png',
    'assets/images/design_image/Group 6790.png',
    'assets/images/design_image/Group 22.png',
    'assets/images/design_image/Mask Group (1).png',
    'assets/images/design_image/Mask Group.png',
   
    'assets/images/design_image/Group (1).png',
    'assets/images/design_image/Group 21.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
              'assets/images/design_image/Union.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 70, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What Brings You',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'to Silent Moon?',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  'choose a topic to focus on:',
                  style: TextStyle(fontSize: 16, color: kTextColor),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, RemindersScreen.routeName),
                        child: Image.asset(
                          imagesList[index],
                        ),
                      );
                    },
                    itemCount: imagesList.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
