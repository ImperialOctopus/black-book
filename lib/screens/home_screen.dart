import 'package:flutter/material.dart';

import 'category_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to Second'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => CategoryScreen()));
          },
        ),
      ),
    );
  }
}
