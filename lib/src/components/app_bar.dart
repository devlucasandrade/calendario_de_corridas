// ignore_for_file: must_be_immutable

import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
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
      backgroundColor: Colors.grey.shade300,
      title: Text(
        textTitle.toUpperCase(),
        style: TextStyles.appBarTitle(),
      ),
    );
  }
}
