import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final Widget title;
  final List<Widget> children;

  const ListCard({this.title, @required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...title != null ? [title, const Divider()] : [],
          ...children,
        ],
      ),
    );
  }
}
