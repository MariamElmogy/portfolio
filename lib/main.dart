import 'package:flutter/material.dart';
import 'package:protfolio/screens/views/dashboard_view.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Mariam Elmogy Protfolio',
      home: const DashboardView(),
    );
  }
}
