import 'package:flutter/material.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';
import 'package:salooma_app/core/assets/app_images.dart';

class OnBoardingData extends StatelessWidget {
  const OnBoardingData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 95,
          child: ClipOval(
            child: Image.asset(
              AppImages.img1,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text("Hard worker", style: AppFonts.st24),
        SizedBox(height: 15),
        Text(
          "A very hard worker student,who are trying\n to do her best through years of study",
        ),
      ],
    );
  }
}
