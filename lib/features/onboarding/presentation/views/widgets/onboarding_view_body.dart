import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salma_maged/core/app_routes.dart';
import 'package:salma_maged/features/onboarding/presentation/views/onboarding_page1.dart';
import 'package:salma_maged/features/onboarding/presentation/views/onboarding_page2.dart';
import 'package:salma_maged/features/onboarding/presentation/views/onboarding_page3.dart';
import 'package:salma_maged/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:salma_maged/features/onboarding/presentation/views/widgets/custom_text_button.dart';
import 'package:salma_maged/features/onboarding/presentation/views/widgets/group_of_containers.dart';

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
