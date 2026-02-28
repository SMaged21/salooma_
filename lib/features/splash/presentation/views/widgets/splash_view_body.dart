import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salooma_app/core/app_routes.dart';
import 'package:salooma_app/core/assets/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<double> fadeAnimation;
  late AnimationController fadeController;

  @override
  void initState() {
    super.initState();

    fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(fadeController);

    fadeController.forward().whenComplete(() {
      GoRouter.of(context).push(AppRoutes.onboardingView);
    }); // start animation
  }

  @override
  void dispose() {
    fadeController.dispose(); // correct dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeTransition(
          opacity: fadeAnimation,
          child: Image.asset(AppImages.logo),
        ),
      ],
    );
  }
}
