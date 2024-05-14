import 'package:flutter/material.dart';
import 'package:protfolio/screens/views/widgets/skill_job_item.dart';

class SkillJobListView extends StatelessWidget {
  const SkillJobListView({
    super.key,
  });

  static const skillsList = [
    'Flutter',
    'Dart',
    'Figma',
    'UI/UX',
    'API',
    'Firebase',
    'HTTP',
    'MQTT Serivce'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: skillsList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => SkillJobItem(
        text: skillsList[index],
      ),
    );
  }
}
