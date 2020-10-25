import 'package:flutter/material.dart';

class StaticSignatureContainer extends StatelessWidget {
  static const double borderWidth = 2.0;
  static const Color borderColor = Color(0xFFB3E5FC);

  final Widget child;

  const StaticSignatureContainer({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:
              Border(left: BorderSide(width: borderWidth, color: borderColor))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: FittedBox(
          fit: BoxFit.contain,
          child: child,
        ),
      ),
    );
  }
}
