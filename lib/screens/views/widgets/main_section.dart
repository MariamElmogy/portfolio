import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:protfolio/utils/app_colors.dart';
import 'package:protfolio/utils/images_data.dart';
import 'package:protfolio/screens/views/widgets/custom_button.dart';
import 'package:protfolio/screens/views/widgets/custom_my_info_card.dart';

class MainSection extends StatelessWidget {
  const MainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 750,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              ImagesData.homeBackgroundImgTop,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              ImagesData.homeBackgroundImgBottom,
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomMyInfoCard(),
              SizedBox(height: 100),
              Row(
                children: [
                  Spacer(),
                  CustomButton(
                    btnText: 'Hire me',
                    backgroundColor: AppColors.hireMeBtn,
                  ),
                  SizedBox(width: 30),
                  CustomButton(
                    btnText: 'Download CV',
                    gradient: LinearGradient(
                      colors: [
                        AppColors.aboutMeGradient1,
                        AppColors.aboutMeGradient2
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}