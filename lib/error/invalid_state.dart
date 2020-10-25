import 'package:flutter/material.dart';

class InvalidStateComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('Invalid state. Please restart.')),
    );
  }
}
