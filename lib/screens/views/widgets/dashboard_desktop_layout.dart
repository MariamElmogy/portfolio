import 'package:flutter/material.dart';
import 'package:protfolio/screens/views/widgets/about_me_section.dart';
import 'package:protfolio/screens/views/widgets/main_section.dart';
import 'package:protfolio/screens/views/widgets/custom_top_menu.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          const HeaderDesktop(),
          // Main
          const MainSection(),
          // ABOUT ME
          const AboutMeSection(),
          // SKILLS
          Container(
            height: 1000,
            width: double.infinity,
            color: Colors.red,
          ),
          // PROJECTS
          Container(
            height: 1000,
            width: double.infinity,
            color: Colors.blue,
          ),
          // CONTACT
          SizedBox(
            height: 1000,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: 500,
              width: 1000,
              decoration: BoxDecoration(
                color: const Color(0XFF2F2F8A).withOpacity(.6),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          // FOOTER
          Container(
            height: 1000,
            width: double.infinity,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
