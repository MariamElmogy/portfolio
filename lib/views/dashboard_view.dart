import 'package:flutter/material.dart';
import 'package:protfolio/utils/app_colors.dart';
import 'package:protfolio/views/widgets/dashboard_desktop_layout.dart';
import 'package:protfolio/views/widgets/dashboard_mobile_layout.dart';
import 'package:protfolio/views/widgets/dashboard_tablet_layout.dart';

import 'widgets/adaptive_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout(),
        ),
      ),
    );
  }
}
