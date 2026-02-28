import 'package:flutter/material.dart';
import 'package:salooma_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: OnboardingViewBody()));
  }
}
