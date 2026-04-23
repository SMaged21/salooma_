import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salma_maged/core/assets/app_fonts.dart';

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
