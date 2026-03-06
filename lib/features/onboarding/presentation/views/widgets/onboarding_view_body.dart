import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salooma_app/core/app_color.dart';
import 'package:salooma_app/core/app_routes.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';
import 'package:salooma_app/features/onboarding/presentation/views/onboarding_page1.dart';
import 'package:salooma_app/features/onboarding/presentation/views/onboarding_page2.dart';
import 'package:salooma_app/features/onboarding/presentation/views/onboarding_page3.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int index = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: SizedBox(
            height: 400,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              children: [
                OnboardingPage1(),
                OnboardingPage2(),
                OnboardingPage3(),
              ],
            ),
          ),
        ),
        GroupOfContainers(
          index1: index == 0,
          index2: index == 1,
          index3: index == 2,
        ),
        SizedBox(height: 15),
        CustomButton(
          text: "next",
          onPressed: () {
            if (index < 2) {
              _pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else {
              GoRouter.of(context).push(AppRoutes.cvView);
            }
          },
        ),
        SizedBox(height: 15),
        index < 2
            ? CustomTextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.cvView);
                },
              )
            : SizedBox(),
      ],
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomTextButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        "skip",
        style: AppFonts.st20.copyWith(
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        height: 65,
        width: 300,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 128),
          child: Text(
            text,
            style: AppFonts.st24.copyWith(
              fontFamily: GoogleFonts.inter().fontFamily,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
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
