import 'package:calendario_de_corridas/src/shared/constants/string_constants.dart';
import 'package:flutter/material.dart';

class ContainerCorridas extends StatelessWidget {
  final String? imageAsset;
  final LinearGradient? gradient;
  final Widget child;
  const ContainerCorridas({
    super.key,
    this.imageAsset,
    this.gradient,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * .2;
    const padding = EdgeInsets.all(20);
    const borderRadius = BorderRadius.all(Radius.circular(20));

    return Material(
      elevation: 5,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageAsset ?? StringConstants.textBasics.imagemVazia,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: borderRadius,
            ),
            height: height,
            padding: padding,
            // child: child,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0),
                  Colors.white,
                ],
                stops: const [0.4, 0.6],
              ),
            ),
            height: height,
            padding: padding,
            // child: child,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black.withOpacity(0.2),
              ),
              borderRadius: borderRadius,
            ),
            height: height,
            padding: padding,
            child: child,
          ),
        ],
      ),
    );
  }
}
