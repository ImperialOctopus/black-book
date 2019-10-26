import 'package:black_book/screens/category_list/category_screen.dart';
import 'package:flutter/material.dart';

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
