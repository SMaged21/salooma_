import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salooma_app/core/app_color.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';
import 'package:salooma_app/features/onboarding/presentation/views/onboarding_page1.dart';

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
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 120),
          child: SizedBox(
            height: 400,
            child: PageView(children: [OnboardingPage1()]),
          ),
        ),
        GroupOfContainers(),
        SizedBox(height: 15),
        CustomButton(),
        SizedBox(height: 15),
        CustomTextButton(),
      ],
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "skip",
      style: AppFonts.st20.copyWith(fontFamily: GoogleFonts.inter().fontFamily),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 300,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 128),
        child: Text(
          "next",
          style: AppFonts.st24.copyWith(
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

class GroupOfContainers extends StatelessWidget {
  final bool index1;
  final bool index2;
  final bool index3;
  const GroupOfContainers({
    super.key,
    this.index1 = true,
    this.index2 = false,
    this.index3 = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        CustomContainer(isActivated: index1),
        SizedBox(width: 15),
        CustomContainer(isActivated: index2),
        SizedBox(width: 15),
        CustomContainer(isActivated: index3),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final bool isActivated;
  const CustomContainer({super.key, required this.isActivated});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: isActivated ? AppColor.primaryColor : Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
