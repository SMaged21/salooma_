import 'package:flutter/material.dart';
import 'package:salma_maged/core/app_color.dart';

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
