import 'package:flutter/material.dart';
import 'package:protfolio/utils/app_styles.dart';

class CustomTopMenu extends StatelessWidget {
  const CustomTopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 50),
        Text('Home', style: AppStyles.styleMedium17(context)),
        Text('About me', style: AppStyles.styleMedium17(context)),
        Text('Work', style: AppStyles.styleMedium17(context)),
        Text('Contact', style: AppStyles.styleMedium17(context)),
        const SizedBox(width: 50),
      ],
    );
  }
}
