import 'package:black_book/screen/practical/practical_screen.dart';
import 'package:flutter/material.dart';

import '../../model/model.dart';
import '../appendix/appendix_screen.dart';
import '../checklist/checklist_screen.dart';
import 'menu_item.dart';

class HomeScreen extends StatelessWidget {
  final Model model;

  HomeScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Black Book'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MenuItem(
              name: 'Clinical Checklist',
              child: Image.asset(
                'assets/images/checklist.jpg',
                fit: BoxFit.cover,
              ),
              onTap: () => Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: ChecklistScreen(model: model),
                  exitPage: this,
                ),
              ),
            ),
            MenuItem(
              name: 'Practical Sign-Off',
              child: Image.asset(
                'assets/images/practical.jpg',
                fit: BoxFit.cover,
              ),
              onTap: () => Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: PracticalScreen(),
                  exitPage: this,
                ),
              ),
            ),
            MenuItem(
              name: 'Appendix',
              child: Image.asset(
                'assets/images/books.jpg',
                fit: BoxFit.cover,
              ),
              onTap: () => Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: AppendixScreen(),
                  exitPage: this,
                ),
              ),
            ),
            /*
            MenuItem(
              name: 'Export',
              child: Image.asset(
                'assets/images/export.jpg',
                fit: BoxFit.cover,
              ),
              onTap: () => Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: ExportScreen(),
                  exitPage: this,
                ),
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}
