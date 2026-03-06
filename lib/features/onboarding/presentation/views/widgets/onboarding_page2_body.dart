import 'package:flutter/material.dart';
import 'package:salooma_app/core/assets/app_images.dart';
import 'package:salooma_app/features/onboarding/presentation/views/widgets/onboarding_data.dart';

class OnboardingPage2Body extends StatelessWidget {
  const OnboardingPage2Body({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingData(
      img: AppImages.img2,
      title: 'Team work',
      subtitle: 'worked in different projects with different teams.',
    );
  }
}
