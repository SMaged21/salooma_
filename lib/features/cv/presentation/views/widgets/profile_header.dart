import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';
import 'package:salma_maged/core/assets/app_images.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage(AppImages.img1), radius: 60),
          Text(
            "Salma Maged",
            style: AppFonts.st24.copyWith(
              fontFamily: GoogleFonts.aboreto().fontFamily,
            ),
          ),
          Text(
            "15/10/2003",
            style: AppFonts.st24.copyWith(
              fontFamily: GoogleFonts.aboreto().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
