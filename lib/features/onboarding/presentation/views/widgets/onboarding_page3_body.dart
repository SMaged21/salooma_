import 'package:flutter/material.dart';
import 'package:salma_maged/core/assets/app_images.dart';
import 'package:salma_maged/features/onboarding/presentation/views/widgets/onboarding_data.dart';

class OnboardingPage3Body extends StatelessWidget {
  const OnboardingPage3Body({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingData(
      title: 'organized person',
      subtitle:
          'A very hard worker student,who are trying to do her best through years of study',
      img: AppImages.img3,
    );
  }
}
