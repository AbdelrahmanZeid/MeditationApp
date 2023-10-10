import 'package:flutter/material.dart';
import 'package:meditation/constants.dart';
import 'package:meditation/models/topic_model.dart';

class ChooseTopicView extends StatelessWidget {
  ChooseTopicView({super.key});
  static const routeName = 'choosetopicview';

  final List<TopicItem> topicsList = const [
    TopicItem(
      topic: Topic(
        title: 'Reduce stress',
        image: 'assets/images/img_maskgroup_122x177.png',
        color: Color(0xff808AFF),
      ),
    ),
    TopicItem(
      topic: Topic(
        title: 'Reduce stress',
        image: 'assets/images/img_maskgroup_122x177.png',
        color: Color(0xff808AFF),
      ),
    ),
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
                  'choose a topic to focus on:',
                  style: TextStyle(fontSize: 16, color: kTextColor),
                ),
                Expanded(
                  child: ListView.builder(
                  
                    itemCount: topicsList.length,
                    itemBuilder: (context, index) {
                      return TopicItem(
                        topic: topicsList[index].topic,
                      );
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

class TopicItem extends StatelessWidget {
  const TopicItem({super.key, required this.topic});
  final Topic topic;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 200,
      decoration: BoxDecoration(
        color: topic.color,
        image: DecorationImage(
          image: AssetImage(topic.image),
        ),
      ),
      child: Text(topic.title),
    );
  }
}
