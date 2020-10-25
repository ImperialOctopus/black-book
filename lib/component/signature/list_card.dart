import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final List<Widget> children;

  const ListCard({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
