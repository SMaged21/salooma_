import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';
import 'package:salooma_app/core/assets/app_images.dart';

class CvViewBody extends StatelessWidget {
  const CvViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(),
          Text("Contact", style: AppFonts.st24),
          Text(
            '''\u2022 01004691832\n\u2022 01080899857\n\u2022 zweensam@gmail.comBullet Text''',
            style: AppFonts.st20.copyWith(
              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
            ),
          ),
          Text("Education", style: AppFonts.st24),
          Text(
            '''\u2022 01004691832\n\u2022 01080899857\n\u2022 zweensam@gmail.comBullet Text''',
            style: AppFonts.st20.copyWith(
              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
            ),
          ),
          Text("FrameWork skills", style: AppFonts.st24),
          Text(
            '''\u2022 dart \n\u2022 flutter widgets \n\u2022 restful APIs state management (cubit) \n\u2022 local data storage (data base,hive,shared preference)''',
            style: AppFonts.st20.copyWith(
              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
            ),
          ),
          Text("languages", style: AppFonts.st24),
          Text(
            '''\u2022 English (B1)''',
            style: AppFonts.st20.copyWith(
              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
            ),
          ),
          Text("Other computer skills", style: AppFonts.st24),
          Text(
            '''\u2022 canva\n\u2022 figma''',
            style: AppFonts.st20.copyWith(
              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 120),
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
