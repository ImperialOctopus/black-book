import 'package:flutter/material.dart';

class LabNormalScreen extends StatelessWidget {
  const LabNormalScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Normal Laboratory Values'),
      ),
      body: Center(
        child: Text('Greetings, Guardian.'),
      ),
    );
  }
}
