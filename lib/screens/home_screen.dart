import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Open first category'),
            onTap: () {
              // Pushs the SecondScreen widget onto the navigation stack
              Navigator.of(context).push(
                CategoryDog(),
              );
            },
          ),
        ],
      ),
    );
  }
}
