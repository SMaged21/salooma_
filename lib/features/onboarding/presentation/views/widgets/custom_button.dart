import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salooma_app/core/app_color.dart';
import 'package:salooma_app/core/assets/app_fonts.dart';

class CustomButton extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({super.key, this.onPressed, required this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      child: Container(
        height: 65,
        width: 300,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 128),
          child: Text(
            widget.text,
            style: AppFonts.st24.copyWith(
              fontFamily: GoogleFonts.inter().fontFamily,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
