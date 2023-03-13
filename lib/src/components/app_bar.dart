// ignore_for_file: must_be_immutable

import 'package:calendario_de_corridas/src/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  String textTitle;

  AppBarWidget({
    super.key,
    required this.textTitle,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(textTitle.toUpperCase()),
      elevation: 5,
      shadowColor: AppColors.basicColors.backgroudGrey,
      surfaceTintColor: AppColors.basicColors.backgroudGrey,
    );
  }
}
