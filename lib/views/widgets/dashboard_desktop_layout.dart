import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:protfolio/utils/app_colors.dart';
import 'package:protfolio/utils/images_data.dart';
import 'package:protfolio/views/widgets/custom_button.dart';
import 'package:protfolio/views/widgets/custom_my_info_card.dart';
import 'package:protfolio/views/widgets/custom_top_menu.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomTopMenu(),
                SizedBox(height: 100),
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
                      backgroundColor: AppColors.downloadCv,
                    ),
                    Spacer(),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10000,
                  child: Text(
                    'rgiugf',
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
