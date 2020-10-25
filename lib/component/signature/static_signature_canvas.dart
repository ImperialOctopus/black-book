import 'package:flutter/material.dart';

import '../../model/signature/stroke.dart';
import '../signature/signature_painter.dart';

/// Displays a signature from provided strokes.
class StaticSignatureCanvas extends StatelessWidget {
  final List<Stroke> strokes;

  const StaticSignatureCanvas({@required this.strokes});

  static const double signatureWidth = 500;
  static const double signatureHeight = 300;

  static const double strokeWidth = 3.0;
  static const Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: signatureHeight,
      width: signatureWidth,
      child: CustomPaint(
        painter: SignaturePainter(
          strokes: strokes,
        ),
      ),
    );
  }
}
