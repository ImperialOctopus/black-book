import 'package:flutter/material.dart';

import 'signature_painter.dart';

class SignatureCanvas extends StatefulWidget {
  @override
  _SignatureCanvasState createState() => _SignatureCanvasState();
}

class _SignatureCanvasState extends State<SignatureCanvas> {
  List<Offset> points = <Offset>[];

  final lineStyle = Paint()
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 3.0
    ..color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CustomPaint(
        size: Size.infinite,
        painter: SignaturePainter(points: points, lineStyle: lineStyle),
      ),
      onPanStart: (details) {
        setState(() {
          final renderBox = context.findRenderObject() as RenderBox;
          points.add(renderBox.globalToLocal(details.globalPosition));
        });
      },
      onPanUpdate: (details) {
        setState(() {
          final renderBox = context.findRenderObject() as RenderBox;
          points.add(renderBox.globalToLocal(details.globalPosition));
        });
      },
      onPanEnd: (details) {
        setState(() {
          points.add(null);
        });
      },
    );
  }
}
