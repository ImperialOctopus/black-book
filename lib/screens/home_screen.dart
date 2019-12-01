import 'package:flutter/material.dart';

import '../model/model.dart';
import '../routes/enter_exit_route.dart';
import 'appendix/appendix_screen.dart';
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
          SizedBox(
            height: 250,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAlias,
              child: Material(
                color: Colors.white,
                child: InkWell(
                  child: Image.asset(
                    'assets/images/checklist.jpg',
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      EnterExitRoute(
                        enterPage: ChecklistScreen(model: model),
                        exitPage: this,
                      ),
                    );
                  },
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
          SizedBox(
            height: 250,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAlias,
              child: Material(
                child: InkWell(
                  child: Image.asset(
                    'assets/images/checklist.jpg',
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      EnterExitRoute(
                        enterPage: AppendixScreen(),
                        exitPage: this,
                      ),
                    );
                  },
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
          RaisedButton(
            elevation: 5,
            padding: EdgeInsets.all(10),
            onPressed: () {
              Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: AppendixScreen(),
                  exitPage: this,
                ),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              height: 250,
              child: Image.asset(
                'assets/images/checklist.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
