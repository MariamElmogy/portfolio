import 'package:flutter/cupertino.dart';
import 'package:protfolio/utils/app_styles.dart';

class SkillJobItem extends StatelessWidget {
  const SkillJobItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0XFFFF9051),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: AppStyles.styleRegular17(context),
        ),
      ),
    );
  }
}
