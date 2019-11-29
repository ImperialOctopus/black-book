import 'package:black_book/routes/enter_exit_route.dart';
import 'package:flutter/material.dart';

import 'health_safety_screen.dart';

class AppendixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appendix'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Health and Safety'),
            onTap: () {
              Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: const HealthSafetyScreen(),
                  exitPage: this,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
