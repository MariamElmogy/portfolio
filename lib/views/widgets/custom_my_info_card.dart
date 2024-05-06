import 'package:flutter/material.dart';
import 'package:protfolio/utils/app_colors.dart';
import 'package:protfolio/utils/app_styles.dart';

class CustomMyInfoCard extends StatelessWidget {
  const CustomMyInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, I\'m Mariam Elmogy',
          style: AppStyles.styleBold60(context),
        ),
        Text(
          'Flutter Developer',
          style: AppStyles.styleBold60(context)
              .copyWith(color: AppColors.homeMajorText),
        ),
        Text(
          'Based in Egypt',
          style: AppStyles.styleBold60(context),
        ),
      ],
    );
  }
}
