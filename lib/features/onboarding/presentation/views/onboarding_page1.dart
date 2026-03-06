import 'package:flutter/material.dart';
import 'package:salooma_app/features/onboarding/presentation/views/widgets/onboarding_page1_body.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.secondColor,
      body: OnboardingPage1Body(),
    );
  }
}
