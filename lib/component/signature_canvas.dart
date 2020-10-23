import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/signature/signature_bloc.dart';
import '../bloc/signature/signature_event.dart';
import '../model/signature/stroke.dart';
import 'signature_painter.dart';

/// Displays the signature from a provided SignatureBloc.
class SignatureCanvas extends StatefulWidget {
  final String reference;

  SignatureCanvas({@required this.reference});

  @override
  _SignatureCanvasState createState() => _SignatureCanvasState();
}

class _SignatureCanvasState extends State<SignatureCanvas> {
  List<Offset> points = <Offset>[];

  static const strokeWidth = 3.0;
  static const color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignatureBloc, List<Stroke>>(
      builder: (context, strokes) => GestureDetector(
        child: CustomPaint(
          painter: SignaturePainter(strokes: [
            ...strokes,
            Stroke(locations: points, strokeWidth: strokeWidth, color: color)
          ]),
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
            BlocProvider.of<SignatureBloc>(context).add(SignatureEventAdd(
                Stroke(
                    locations: points,
                    strokeWidth: strokeWidth,
                    color: color)));
            points.clear();
          });
        },
      ),
    );
  }
}
