import 'package:demo/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Define  common text styles here

  // Heading Text Style
  static TextStyle heading = GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ));

  // Subheading Text Style
  static const TextStyle subheading = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  // Caption Text Style
  static TextStyle caption = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          color: AppColors.buttonText));

  // Button Text Style
  static const TextStyle button = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
