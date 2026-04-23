import 'package:flutter/material.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';

class OnBoardingData extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  const OnBoardingData({
    super.key,
    required this.title,
    required this.subtitle,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CircleAvatar(
          radius: 95,
          child: ClipOval(
            child: Image.asset(img, width: 200, height: 200, fit: BoxFit.cover),
          ),
        ),
        Text(textAlign: TextAlign.center, title, style: AppFonts.st24),
        SizedBox(height: 15),
        Text(textAlign: TextAlign.center, subtitle),
      ],
    );
  }
}
