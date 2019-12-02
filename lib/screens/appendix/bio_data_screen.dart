import 'package:flutter/material.dart';

class BioDataScreen extends StatelessWidget {
  const BioDataScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biological & Reproductive Data'),
      ),
      body: Center(
        child: Text('Greetings, Guardian.'),
      ),
    );
  }
}
