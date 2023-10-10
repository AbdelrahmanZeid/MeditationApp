import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';

class ChooseTopicView extends StatelessWidget {
  const ChooseTopicView({super.key});
  static const routeName = 'choosetopicview';

  final List<String>topicsList=const [

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
            padding: const EdgeInsets.only(left: 12, top: 70),
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
                  'choose a topic to focuse on:',
                  style: TextStyle(fontSize: 16, color: kTextColor),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Text('hellli');
                    },
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
