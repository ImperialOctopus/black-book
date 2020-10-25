import 'package:flutter/material.dart';

class StaticSignatureContainer extends StatelessWidget {
  static const double height = 100;
  static const double width = 200;
  static const double borderWidth = 2.0;
  static const Color borderColor = Color(0xFFB3E5FC);

  final Widget child;

  const StaticSignatureContainer({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          border:
              Border(left: BorderSide(width: borderWidth, color: borderColor))),
      child: FittedBox(
        fit: BoxFit.contain,
        child: child,
      ),
    );
  }
}
