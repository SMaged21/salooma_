import 'package:flutter/material.dart';
import 'package:salooma_app/core/app_color.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 400, child: PageView(children: [])),
        Container(
          height: 65,
          width: 300,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(textAlign: TextAlign.center, "Next"),
        ),
      ],
    );
  }
}
