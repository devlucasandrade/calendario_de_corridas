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
    return Material(
      elevation: 5,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageAsset ?? StringConstants.textBasics.imagemVazia,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            height: MediaQuery.of(context).size.height * .12,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black.withOpacity(0.2),
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.all(15),
            child: child,
          ),
        ],
      ),
    );
  }
}
