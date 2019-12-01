import 'package:flutter/material.dart';

import '../model/model.dart';
import '../routes/enter_exit_route.dart';
import 'checklist/checklist_screen.dart';

class HomeScreen extends StatelessWidget {
  final Model model;

  HomeScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          menuItem(
            context: context,
            name: 'Text',
            imageAsset: 'assets/images/checklist.jpg',
            onTap: () {
              Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: ChecklistScreen(model: model),
                  exitPage: this,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget menuItem(
      {BuildContext context, String name, String imageAsset, Function onTap}) {
    return SizedBox(
      height: 200,
      child: Card(
        color: Theme.of(context).primaryColor,
        semanticContainer: true,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
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
                  padding: EdgeInsets.only(right: 5),
                  child: Text(name,
                      style: Theme.of(context).primaryTextTheme.title),
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
