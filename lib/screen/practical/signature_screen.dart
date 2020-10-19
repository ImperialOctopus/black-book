import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/signature_canvas.dart';

class SignatureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: SignatureCanvas(),
          ),
        ),
      ),
    );
  }
}
