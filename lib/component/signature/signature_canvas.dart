import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/signature/signature_bloc.dart';
import '../../bloc/signature/signature_event.dart';
import '../../extension/offset_to_point.dart';
import '../../model/signature/stroke.dart';
import '../signature/signature_painter.dart';

/// Displays the signature from a provided SignatureBloc.
class SignatureCanvas extends StatefulWidget {
  const SignatureCanvas();

  @override
  _SignatureCanvasState createState() => _SignatureCanvasState();
}

class _SignatureCanvasState extends State<SignatureCanvas> {
  List<Point<double>> points = <Point<double>>[];

  static const strokeWidth = 3.0;
  static const color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:
          BlocBuilder<SignatureBloc, List<Stroke>>(builder: (context, strokes) {
        return CustomPaint(
          painter: SignaturePainter(strokes: [
            ...strokes,
            Stroke(points: points, strokeWidth: strokeWidth, color: color)
          ]),
        );
      }),
      onPanStart: (details) {
        setState(() {
          final renderBox = context.findRenderObject() as RenderBox;
          points.add(renderBox.globalToLocal(details.globalPosition).toPoint());
        });
      },
      onPanUpdate: (details) {
        setState(() {
          final renderBox = context.findRenderObject() as RenderBox;
          points.add(renderBox.globalToLocal(details.globalPosition).toPoint());
        });
      },
      onPanEnd: (details) {
        setState(() {
          BlocProvider.of<SignatureBloc>(context).add(SignatureEventAdd(Stroke(
              points: points.toList(),
              strokeWidth: strokeWidth,
              color: color)));
          points.clear();
        });
      },
    );
  }
}
