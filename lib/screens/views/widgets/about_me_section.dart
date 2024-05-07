import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:protfolio/utils/app_colors.dart';
import 'package:protfolio/utils/app_styles.dart';
import 'package:protfolio/utils/lottie_data.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color(0xFF152058),
            AppColors.background,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(35),
              padding: const EdgeInsets.all(35),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.aboutMeGradient1,
                    AppColors.aboutMeGradient2
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About me',
                    style: AppStyles.styleBold40(context),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'My name is Mariam Elmogy. \nI’m a Flutter Developer based in Alexandria, Egypt.\nI’m currently working with Pyramakerz. \nI’m passionate about creating responsive \nand adaptive applications.\nMy goal is to grow my skills.',
                    style: AppStyles.styleRegular17(context),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: LottieBuilder.asset(LottieData.circles),
          ),
        ],
      ),
    );
  }
}
