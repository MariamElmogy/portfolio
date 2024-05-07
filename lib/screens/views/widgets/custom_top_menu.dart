import 'package:flutter/material.dart';
import 'package:protfolio/utils/app_colors.dart';
import 'package:protfolio/utils/app_styles.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 50),
          TextButton(
            onPressed: () {},
            child: Text(
              'Home',
              style: AppStyles.styleMedium17(context),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'About me',
              style: AppStyles.styleMedium17(context),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  AppColors.aboutMeGradient1,
                  AppColors.aboutMeGradient2
                ],
              ),
            ),
            child: Text(
              'M',
              style: AppStyles.styleMedium17(context)
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Work',
              style: AppStyles.styleMedium17(context),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Contact',
              style: AppStyles.styleMedium17(context),
            ),
          ),
          const SizedBox(width: 50),
        ],
      ),
    );
  }
}
