import 'package:black_book/routes/slide_left_route.dart';
import 'package:black_book/screens/appendix/appendix_screen.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';
import '../routes/enter_exit_route.dart';
import 'checklist/checklist_screen.dart';

class HomeScreen extends StatelessWidget {
  final Model model;

  HomeScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _menuItems = <Widget>[
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
        imageAsset: 'assets/images/appendix.jpg',
        onTap: () {
          Navigator.of(context).push(
            SlideLeftRoute(
              page: AppendixScreen(),
            ),
          );
        },
      ),
      menuItem(
        context: context,
        name: 'Appendix',
        imageAsset: 'assets/images/appendix.jpg',
        onTap: () {
          Navigator.of(context).push(
            SlideLeftRoute(
              page: AppendixScreen(),
            ),
          );
        },
      ),
      menuItem(
        context: context,
        name: 'Appendix',
        imageAsset: 'assets/images/appendix.jpg',
        onTap: () {
          Navigator.of(context).push(
            SlideLeftRoute(
              page: AppendixScreen(),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: OrientationBuilder(builder: (context, orientation) {
              return orientation == Orientation.portrait
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _menuItems,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _menuItems,
                    );
            }),
          ),
        ),
      ),
    );
  }

  Widget menuItem(
      {BuildContext context, String name, String imageAsset, Function onTap}) {
    return Expanded(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 200,
        ),
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
                      style: Theme.of(context).primaryTextTheme.title,
                    ),
                  ),
                ),
              ],
            ),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
