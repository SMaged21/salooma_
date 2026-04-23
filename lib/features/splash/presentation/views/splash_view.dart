import 'package:flutter/material.dart';
import 'package:salma_maged/core/app_color.dart';
import 'package:salma_maged/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: SplashViewBody(),
      ),
    );
  }
}
