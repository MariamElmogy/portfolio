import 'package:flutter/material.dart';
import 'package:protfolio/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText, required this.backgroundColor,
  });

  final String btnText;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.grey.shade600,
        backgroundColor: backgroundColor,
        elevation: 10,
        padding: const EdgeInsets.symmetric(horizontal: 35),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(.3),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        btnText,
        textAlign: TextAlign.center,
        style: AppStyles.styleRegular17(context),
      ),
    );
  }
}
