import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      alignment: Alignment.topRight,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}
