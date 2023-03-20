import 'package:flutter/material.dart';

class ContainerPadrao extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget child;
  const ContainerPadrao({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: Colors.black.withOpacity(0.2),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        child: child,
      ),
    );
  }
}
