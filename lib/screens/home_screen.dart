import 'package:black_book/routes/slide_left_route.dart';
import 'package:black_book/screens/appendix/appendix_screen.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import 'checklist/checklist_screen.dart';

class HomeScreen extends StatelessWidget {
  final Model model;

  HomeScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                menuItem(
                  context: context,
                  name: 'Clinical Checklist',
                  imageAsset: 'assets/images/checklist.jpg',
                  onTap: () {
                    Navigator.of(context).push(
                      SlideLeftRoute(
                        page: ChecklistScreen(model: model),
                      ),
                    );
                  },
                ),
                menuItem(
                  context: context,
                  name: 'Appendix',
                  imageAsset: 'assets/images/books.jpg',
                  onTap: () {
                    Navigator.of(context).push(
                      SlideLeftRoute(
                        page: AppendixScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menuItem(
      {BuildContext context, String name, String imageAsset, Function onTap}) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: Card(
        color: Theme.of(context).primaryColor,
        semanticContainer: true,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: Text(
                    name,
                    textAlign: TextAlign.end,
                    style: Theme.of(context).primaryTextTheme.headline6,
                  ),
                ),
              ),
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
