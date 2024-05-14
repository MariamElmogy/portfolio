import 'package:flutter/material.dart';
import 'package:protfolio/utils/app_styles.dart';

class JobTitle extends StatelessWidget {
  const JobTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(
          'Pyramakerz Technologies/ Flutter Developer',
          style: AppStyles.styleRegular25(context),
        ),
        const Spacer(),
        Text(
          'JUN 2024 - PRESENT'.toUpperCase(),
          style: AppStyles.styleRegular17(context),
        ),
        const Spacer(),
      ],
    );
  }
}
