import 'package:flutter/material.dart';

class FirstCategoryScreen extends StatelessWidget {
  const FirstCategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First category'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Close'),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
