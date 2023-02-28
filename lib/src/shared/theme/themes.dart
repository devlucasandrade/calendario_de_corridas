import 'package:calendario_de_corridas/src/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.grey,
      ),
      navigationDrawerTheme: NavigationDrawerThemeData(
        indicatorColor: Colors.grey.shade400,
        labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return GoogleFonts.poppins(
                color: AppColors.textColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              );
            } else {
              return GoogleFonts.poppins(
                color: AppColors.textColors.black,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              );
            }
          },
        ),
      ),
      scaffoldBackgroundColor: Colors.grey.shade300,
    );
