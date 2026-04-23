import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';
import 'package:salma_maged/features/cv/presentation/views/widgets/profile_header.dart';

class CvViewBody extends StatelessWidget {
  const CvViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
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
      ),
    );
  }
}
