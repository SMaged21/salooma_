import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salma_maged/core/app_routes.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return MaterialButton(
      onPressed: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsView);
      },
      child: Column(
        children: [
          Image.asset(
            "assets/images/pride.webp",
            width: width * 0.5,
            height: height * 0.3,
          ),
          Text("Book name", style: AppFonts.st20),
          Text("Author name", style: AppFonts.st20),
        ],
      ),
    );
  }
}
