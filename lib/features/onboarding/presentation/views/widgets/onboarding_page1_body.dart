import 'package:flutter/material.dart';
import 'package:salma_maged/core/assets/app_images.dart';
import 'package:salma_maged/features/onboarding/presentation/views/widgets/onboarding_data.dart';

class OnboardingPage1Body extends StatelessWidget {
  const OnboardingPage1Body({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingData(
      title: "Hard worker",
      subtitle:
          "A very hard worker student,who are trying\n to do her best through years of study",
      img: AppImages.img1,
    );
  }
}
