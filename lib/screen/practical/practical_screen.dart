import 'package:flutter/material.dart';

class PracticalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Practical Sign-Off')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OutlinedButton(
              child: Text('Button'),
              onPressed: () =>
                  Navigator.of(context)?.pushNamed('/practical/signature'),
            ),
          ],
        ));
  }
}
