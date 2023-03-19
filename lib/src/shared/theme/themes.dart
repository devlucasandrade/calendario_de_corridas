import 'package:calendario_de_corridas/src/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.basicColors.backgroudGrey,
        surfaceTintColor: AppColors.basicColors.backgroudGrey,
        shadowColor: AppColors.basicColors.backgroudGrey,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(
          color: AppColors.textColors.black,
          fontSize: 18,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.basicColors.black,
        unselectedItemColor: AppColors.basicColors.grey,
        selectedLabelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
        ),
      ),
      scaffoldBackgroundColor: AppColors.basicColors.backgroudGrey,
    );
