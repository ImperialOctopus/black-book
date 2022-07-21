import 'package:flutter/material.dart';

import 'home_screen_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              HomeScreenItem(
                name: 'Clinical Checklist',
                child: Image.asset(
                  'assets/images/checklist.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () => Navigator.of(context).pushNamed('/checklist'),
              ),
              HomeScreenItem(
                name: 'Practical Sign-Off',
                child: Image.asset(
                  'assets/images/practical.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () => Navigator.of(context).pushNamed('/practical'),
              ),
              HomeScreenItem(
                name: 'Appendix',
                child: Image.asset(
                  'assets/images/books.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () => Navigator.of(context).pushNamed('/appendix'),
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
      ),
    );
  }
}
