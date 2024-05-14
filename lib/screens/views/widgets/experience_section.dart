import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:protfolio/screens/views/widgets/job_title.dart';
import 'package:protfolio/screens/views/widgets/skill_job_list_view.dart';
import 'package:protfolio/utils/app_styles.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: 1000,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Experience'.toUpperCase(),
            style: AppStyles.styleBold60(context),
          ),
          const SizedBox(height: 16),
          Text(
            'Explore Now'.toUpperCase(),
            style: AppStyles.styleRegular17(context).copyWith(
              letterSpacing: 10,
              color: const Color(0XFFFF9051),
            ),
          ),
          const SizedBox(height: 40),
          const JobTitle(),
          const SizedBox(height: 40),
          const Text('Experience'),
          const SizedBox(height: 40),
          const SizedBox(
            height: 50,
            child: SkillJobListView(),
          ),
        ],
      ),
    );
  }
}
