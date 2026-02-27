import 'package:flutter/material.dart';
import 'package:salooma_app/core/assets/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image(image: AssetImage(AppImages.logo))],
    );
  }
}
