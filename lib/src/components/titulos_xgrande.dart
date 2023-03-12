import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';

class TitulosXGrande extends StatelessWidget {
  final String text;
  const TitulosXGrande({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text.toUpperCase(),
          style: TextStyles.titleXGrande(),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
