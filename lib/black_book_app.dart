import 'package:black_book/screens/appendix/appendix_screen.dart';
import 'package:black_book/screens/checklist/checklist_screen.dart';
import 'package:black_book/screens/practical/practical_screen.dart';
import 'package:black_book/service/model_service.dart';
import 'package:black_book/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/home/home_screen.dart';

class BlackBookApp extends StatelessWidget {
  final ModelService modelService;

  const BlackBookApp({@required this.modelService});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<ModelService>.value(
        value: modelService,
      )
    ], child: AppView());
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Book',
      theme: themeData,
      navigatorKey: _navigatorKey,
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/checklist': (var context) => ChecklistScreen(),
        '/practical': (var context) => PracticalScreen(),
        '/appendix': (var context) => AppendixScreen(),
      },
    );
  }
}
