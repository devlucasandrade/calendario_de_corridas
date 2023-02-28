import 'package:calendario_de_corridas/src/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle titleGrande({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: FonteSize.grande,
    );
  }

  static TextStyle titleXGrande({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: FonteSize.xgrande,
    );
  }

  static TextStyle titleXXGrande({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: FonteSize.xxgrande,
    );
  }

  static TextStyle appBarTitle({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontSize: FonteSize.xgrande,
    );
  }

  static TextStyle textoNormal({
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontSize: FonteSize.normal,
      decoration: decoration,
    );
  }

  static TextStyle textoGrande({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontSize: FonteSize.grande,
    );
  }

  static TextStyle meses({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: FonteSize.xgrande,
    );
  }

  static TextStyle showdialog({
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.poppins(
      color: color ?? AppColors.textColors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontSize: FonteSize.grande,
      height: 3,
    );
  }
}

class FonteSize {
  static const double pequena = 10;
  static const double normal = 12;
  static const double grande = 14;
  static const double xgrande = 16;
  static const double xxgrande = 18;
  static const double xxxgrande = 22;
}
